cat << 'EOF' > fix_all.py
import os
import subprocess

# -----------------------------------------------------------------------------
# 1. Purge any duplicate or old post files in _posts/
# Keep strictly the 5 canonical post files:
# -----------------------------------------------------------------------------
canonical_posts = {
    '2026-09-11-relations.md',
    '2026-09-12-first-definitions-analysis.md',
    '2026-09-12-counting.md',
    '2026-09-12-queues-and-ordinal-numbers.md',
    '2026-09-12-zfc-axioms.md'
}

for fname in os.listdir('_posts'):
    if fname.endswith('.md') and fname not in canonical_posts:
        fpath = os.path.join('_posts', fname)
        print(f"Removing duplicate/stray post file: {fpath}")
        subprocess.run(['git', 'rm', '-f', fpath], check=False)

# -----------------------------------------------------------------------------
# 2. Write 2026-09-12-counting.md with direct proofs (NO broken {% include %})
# -----------------------------------------------------------------------------
counting_content = r"""---
layout: post
title: "What Does it Mean to Count?"
date: 2026-09-12
description: "Equinumerosity, Hume's Principle, the Schröder-Bernstein Theorem, and the naming of the infinite."
tags: [set-theory, discrete-mathematics, logic]
categories: [mathematics]
---

Cardinality answers the fundamental question: *"When do two sets have the same size?"*

For finite collections, we can determine equality without counting: if every person in a room is wearing a hat and no hats remain, the collections of hats and people are equal in magnitude, regardless of the quantity. For infinite collections, sequential counting fails entirely, and this bijective matching becomes our foundational definition.

---

### 1. Equinumerosity and the Pre-order of Sizes

* Two sets $$A$$ and $$B$$ are **equinumerous** ($$A \sim B$$) if there exists a bijection $$f \colon A \longrightarrow B$$. Equinumerosity is an equivalence relation.
* We say $$A$$ is **no larger than** $$B$$ ($$A \le_c B$$) if there exists an injection $$f \colon A \longrightarrow B$$.

#### Hume’s Principle
Just as the Axiom of Extensionality formalises Leibniz's Law of the Identity of Indiscernibles, Cantor's definition of equinumerosity formalises **Hume’s Principle**: two collections have the same cardinal number if and only if their elements can be placed in one-to-one correspondence. In *A Treatise of Human Nature* (1739), David Hume observed:

> *"When two numbers are so combined as that the one has always an unit answering to every unit of the other, we pronounce them equal."*

Gottlob Frege later adopted this as the conceptual cornerstone from which all of Peano arithmetic could be derived. By replacing sequential counting with bijective pairing, Cantor freed cardinality from the constraints of finiteness.

---

### 2. The Schröder–Bernstein Theorem

Reflexivity ($$A \le_c A$$) and transitivity ($$A \le_c B \land B \le_c C \rightarrow A \le_c C$$) of the injection pre-order are immediate. However, **antisymmetry** is deceptively difficult:
$$
A \le_c B \land B \le_c A \implies A \sim B
$$
If you have an injection from $$A$$ into $$B$$ and an injection from $$B$$ into $$A$$, can you construct a genuine bijection?

> **Theorem (Schröder–Bernstein, 1897):** Let $$A$$ and $$B$$ be sets. If there exist injections $$f \colon A \longrightarrow B$$ and $$g \colon B \longrightarrow A$$, then there exists a bijection $$h \colon A \longrightarrow B$$.

*Historical Note:* Stated by Cantor in 1887 without proof, and proved by Dedekind in 1887 (unpublished). Felix Bernstein provided the first correct proof in 1897 independent of the Axiom of Choice. Ernst Schröder published a flawed proof in 1898, had its errors exposed by Alwin Korselt in 1902, confirmed the mistake, and died shortly after.

<details class="border rounded p-3 my-3" markdown="1">
<summary style="cursor: pointer;"><b>Proof (König, 1906)</b> <span class="text-muted font-italic">(click to reveal)</span></summary>

**Case 1: Assume $$B \subseteq A$$.**

Here, the inclusion map $$\iota \colon B \hookrightarrow A$$ provides the second injection. We only need to find a bijection using our given injection $$f \colon A \longrightarrow B$$.

The elements in $$A \setminus B$$ have no immediate home in $$B$$. We resolve this by letting $$f$$ push them forward, creating a cascade of displaced subsets:
$$
A_0 := A \setminus B, \quad A_{n+1} := f(A_n), \quad C := \bigcup_{n \in \mathbb{N}} A_n
$$
Define the function $$h \colon A \longrightarrow B$$ by:
$$
h(x) := \begin{cases} f(x) & \text{if } x \in C, \\ x & \text{if } x \notin C. \end{cases}
$$

1. **Well-defined codomain ($$h(A) \subseteq B$$):**  
   If $$x \in C$$, then $$h(x) = f(x) \in B$$. If $$x \notin C$$, then $$x \notin A_0 = A \setminus B$$, which means $$x \in B$$. Thus $$h(x) = x \in B$$.
2. **Injectivity:**  
   Suppose $$h(x) = h(y)$$.
   * If $$x, y \in C$$, injectivity of $$f$$ gives $$f(x) = f(y) \implies x = y$$.
   * If $$x, y \notin C$$, then $$x = y$$.
   * If $$x \in C$$ and $$y \notin C$$, then $$x \in A_k$$ for some $$k$$, so $$h(x) = f(x) \in A_{k+1} \subseteq C$$. But $$h(y) = y \notin C$$, so $$h(x) \ne h(y)$$.
3. **Surjectivity:**  
   Let $$y \in B$$.
   * If $$y \in C$$, since $$y \in B$$, $$y \notin A_0$$. Hence $$y \in A_{k+1} = f(A_k)$$ for some $$k \ge 0$$. Thus $$y = f(x)$$ for some $$x \in A_k \subseteq C$$, meaning $$h(x) = f(x) = y$$.
   * If $$y \notin C$$, then $$h(y) = y$$.

Hence, $$h \colon A \longrightarrow B$$ is a bijection.

---

**Case 2: General Case ($$B \not\subseteq A$$).**

We have injections $$f \colon A \longrightarrow B$$ and $$g \colon B \longrightarrow A$$.

Consider the image $$g(B) \subseteq A$$. Because $$g$$ is injective, it is a bijection onto its range with inverse $$g^{-1} \colon g(B) \longrightarrow B$$.

Now consider the set $$A$$ and its subset $$g(B) \subseteq A$$. The composition:
$$
g \circ f \colon A \longrightarrow g(B)
$$
is an injection from $$A$$ into its subset $$g(B)$$. 

Applying **Case 1** to the pair $$(A, g(B))$$ with the injection $$g \circ f$$, there exists a bijection:
$$
h \colon A \longrightarrow g(B)
$$
Composing this with $$g^{-1}$$ yields our desired bijection:
$$
g^{-1} \circ h \colon A \longrightarrow B
$$

Notice that this proof is **entirely constructive**: $$h(x)$$ is determined strictly by iteration on $$\mathbb{N}$$ without invoking the Axiom of Choice.

<div style="text-align: right;">$$\boldsymbol{Q.E.D.}$$</div>

</details>

---

### 3. What is a Cardinal Number? The Standard Ruler

Because the Schröder–Bernstein Theorem establishes that $$\le_c$$ is antisymmetric, equinumerosity classes form a hierarchy of magnitudes.

#### Benchmarks vs. Classes
In axiomatic set theory, the collection of all sets equinumerous to a non-empty set is a **proper class**. Instead of collecting all sets of a given size, we choose a **canonical benchmark set** at each level of magnitude:
* **$$0$$** is represented by $$\emptyset$$
* **$$1$$** is represented by $$\{\emptyset\}$$
* **$$n$$** is represented by $$\{0, 1, \dots, n-1\}$$
* **$$\aleph_0$$** is represented by $$\mathbb{N}$$
* **$$\beth_1$$** is represented by $$\mathcal{P}(\mathbb{N})$$

The **cardinality** of a set $$X$$, denoted $$\vert X \vert$$, is the unique benchmark to which $$X$$ is bijectively matched.

#### Cardinal Arithmetic
For any sets $$\vert A \vert = \kappa$$ and $$\vert B \vert = \lambda$$:
* **Addition:** $$\kappa + \lambda := \vert A \sqcup B \vert$$ (disjoint union)
* **Multiplication:** $$\kappa \cdot \lambda := \vert A \times B \vert$$
* **Exponentiation:** $$\kappa^\lambda := \vert A^B \vert$$, where $$A^B := \{f \colon B \longrightarrow A\}$$

When $$A = \{0, 1\}$$, every function $$f \colon B \longrightarrow \{0, 1\}$$ is the characteristic function of a unique subset of $$B$$. Hence:
$$
2^\lambda = \vert \{0, 1\}^B \vert = \vert \mathcal{P}(B) \vert
$$

<details class="border rounded p-3 my-3" markdown="1">
<summary style="cursor: pointer;"><b>Properties of Cardinal Arithmetic</b> <span class="text-muted font-italic">(click to reveal)</span></summary>

1. **$$\aleph_0 + \aleph_0 = \aleph_0$$:**  
   $$\mathbb{N} \sqcup \mathbb{N} \sim \mathbb{N}$$ via $$n_1 \mapsto 2n$$ and $$n_2 \mapsto 2n+1$$.
2. **$$\aleph_0 \cdot \aleph_0 = \aleph_0$$:**  
   $$\mathbb{N} \times \mathbb{N} \sim \mathbb{N}$$ via the Cantor pairing function $$\pi(m, n) = \frac{(m+n)(m+n+1)}{2} + n$$.
3. **$$2^\kappa \cdot 2^\lambda = 2^{\kappa + \lambda}$$:**  
   $$\mathcal{P}(A) \times \mathcal{P}(B) \sim \mathcal{P}(A \sqcup B)$$ via $$(S, T) \mapsto S \sqcup T$$.
4. **$$(\kappa^\lambda)^\mu = \kappa^{\lambda \cdot \mu}$$:**  
   $$(A^B)^C \sim A^{B \times C}$$ via currying: $$f \mapsto \tilde{f}$$ where $$\tilde{f}(b, c) := (f(c))(b)$$.

<div style="text-align: right;">$$\boldsymbol{Q.E.D.}$$</div>

</details>

#### The Trivialisation of Addition and Multiplication
Under the Axiom of Choice, infinite addition and multiplication reduce to maximums:

> **Theorem (Hessenberg, 1906):** For any infinite cardinals $$\kappa$$ and $$\lambda$$:
> $$
> \kappa + \lambda = \kappa \cdot \lambda = \max\{\kappa, \lambda\}
> $$

*Historical Note:* In 1924, Alfred Tarski proved that $$\forall \kappa (\kappa^2 = \kappa) \iff \mathbf{AC}$$. Maurice Fréchet rejected the note from *Comptes Rendus*, stating that *"an implication between two true propositions is not a new result,"* while Henri Lebesgue also rejected it, remarking that *"an implication between two false propositions is of no interest!"*

<details class="border rounded p-3 my-3" markdown="1">
<summary style="cursor: pointer;"><b>Proof of Hessenberg's Theorem</b> <span class="text-muted font-italic">(click to reveal)</span></summary>

It suffices to prove $$\kappa \cdot \kappa = \kappa$$.

Assume by transfinite induction that $$\alpha \cdot \alpha = \alpha$$ holds for all infinite cardinals $$\alpha < \kappa$$. Define the max-lexicographic well-ordering $$\prec$$ on $$\kappa \times \kappa$$:
$$
(\alpha, \beta) \prec (\gamma, \delta) \iff \begin{cases} \max\{\alpha, \beta\} < \max\{\gamma, \delta\}, \text{ or} \\ \max\{\alpha, \beta\} = \max\{\gamma, \delta\} \land \alpha < \gamma, \text{ or} \\ \max\{\alpha, \beta\} = \max\{\gamma, \delta\} \land \alpha = \gamma \land \beta < \delta. \end{cases}
$$
For any $$(\alpha, \beta) \in \kappa \times \kappa$$, let $$\gamma = \max\{\alpha, \beta\} < \kappa$$. The initial segment preceding $$(\alpha, \beta)$$ is contained in $$(\gamma + 1) \times (\gamma + 1)$$. 

By induction, $$\vert (\gamma + 1) \times (\gamma + 1) \vert = \vert \gamma + 1 \vert < \kappa$$. Thus every proper initial segment of $$(\kappa \times \kappa, \prec)$$ has cardinality strictly less than $$\kappa$$. The order type cannot reach $$\kappa^+$$, so $$\vert \kappa \times \kappa \vert \le \kappa$$. Combining with the diagonal injection $$\kappa \hookrightarrow \kappa \times \kappa$$ yields:
$$
\kappa \cdot \kappa = \kappa
$$
For $$\kappa \le \lambda$$:
$$
\lambda \le \kappa + \lambda \le \kappa \cdot \lambda \le \lambda \cdot \lambda = \lambda \implies \kappa + \lambda = \kappa \cdot \lambda = \lambda = \max\{\kappa, \lambda\}
$$

<div style="text-align: right;">$$\boldsymbol{Q.E.D.}$$</div>

</details>

---

### 4. Cantor's Theorem: The Scale of Infinities

> **Theorem (Cantor):** For any set $$A$$, there exists no surjection $$f \colon A \longrightarrow \mathcal{P}(A)$$.

<details class="border rounded p-3 my-3" markdown="1">
<summary style="cursor: pointer;"><b>Proof</b> <span class="text-muted font-italic">(click to reveal)</span></summary>

Suppose for contradiction that such a surjection exists. Define:
$$
B := \{x \in A \mid x \notin f(x)\}
$$
Since $$f$$ is surjective, $$B = f(a)$$ for some $$a \in A$$. Then:
$$
a \in B \iff a \notin f(a) \iff a \notin B
$$
which is a contradiction. Hence no surjection exists, and:
$$
A \nsim \mathcal{P}(A)
$$

<div style="text-align: right;">$$\boldsymbol{Q.E.D.}$$</div>

</details>

Because $$x \mapsto \{x\}$$ is an injection $$A \hookrightarrow \mathcal{P}(A)$$, Cantor’s theorem proves that:
$$
A <_c \mathcal{P}(A) \iff \kappa < 2^\kappa
$$
The measuring ruler extends infinitely into the transfinite: $$\kappa < 2^\kappa < 2^{2^\kappa} < \dots$$

---

### 5. Classifying the Infinities

A set $$A$$ is **countable** if $$A$$ is finite or $$A \sim \mathbb{N}$$.

1. **$$\mathbb{N}$$ is countable:** Via $$\operatorname{id}_{\mathbb{N}}$$.
2. **$$\mathbb{Z}$$ is countable:** Via interleaving $$f(0) = 0, f(1) = 1, f(2) = -1, \dots$$
3. **$$\mathbb{Q}$$ is countable:** The map $$a/b \mapsto (a, b)$$ for irreducible fractions injects $$\mathbb{Q}$$ into $$\mathbb{Z} \times \mathbb{N} \sim \mathbb{N}$$.
4. **$$\mathbb{R}$$ has the exact cardinality of $$\mathcal{P}(\mathbb{N})$$:**

<details class="border rounded p-3 my-3" markdown="1">
<summary style="cursor: pointer;"><b>Proof of $$\mathbb{R} \sim \mathcal{P}(\mathbb{N})$$</b> <span class="text-muted font-italic">(click to reveal)</span></summary>

**1. Injection $$f \colon \mathcal{P}(\mathbb{N}) \longrightarrow \mathbb{R}$$:**  
Define $$f(S) := \sum_{n \in S} \frac{2}{3^{n+1}}$$. Ternary expansions using only digits $$0$$ and $$2$$ avoid dual representations ($$0.0111\dots = 0.1000\dots$$), so $$f$$ is injective.

**2. Injection $$g \colon \mathbb{R} \longrightarrow \mathcal{P}(\mathbb{N})$$:**  
Every real $$x$$ is uniquely determined by its Dedekind cut $$D(x) := \{q \in \mathbb{Q} \mid q < x\}$$. Density of $$\mathbb{Q}$$ ensures $$D \colon \mathbb{R} \longrightarrow \mathcal{P}(\mathbb{Q})$$ is injective. Since $$\mathbb{Q} \sim \mathbb{N}$$, this induces an injection $$g \colon \mathbb{R} \longrightarrow \mathcal{P}(\mathbb{N})$$.

By the Schröder–Bernstein Theorem, mutual injections establish:
$$
\mathbb{R} \sim \mathcal{P}(\mathbb{N})
$$
Since $$\mathbb{N} \nsim \mathcal{P}(\mathbb{N})$$ by Cantor's Theorem, it follows that $$\mathbb{R} \nsim \mathbb{N}$$.

<div style="text-align: right;">$$\boldsymbol{Q.E.D.}$$</div>

</details>

5. **The Continuum is Scale-Invariant: $$(0, 1) \sim \mathbb{R}$$**

<details class="border rounded p-3 my-3" markdown="1">
<summary style="cursor: pointer;"><b>Proof of $$(0, 1) \sim \mathbb{R}$$</b> <span class="text-muted font-italic">(click to reveal)</span></summary>

Define $$f \colon (0, 1) \longrightarrow \mathbb{R}$$ by:
$$
f(x) := \tan\left(\pi\left(x - \frac{1}{2}\right)\right)
$$
Because the tangent function is continuous and strictly increasing on $$(-\frac{\pi}{2}, \frac{\pi}{2})$$ with range $$(-\infty, \infty)$$, $$f$$ is a bijection.

<div style="text-align: right;">$$\boldsymbol{Q.E.D.}$$</div>

</details>

6. **The Dimension Paradox: $$\mathbb{R} \sim \mathbb{R}^2$$**  
In 1877, Cantor proved that a 1D line and a 2D plane possess the same cardinality, writing to Dedekind: *"Je le vois, mais je ne le crois pas!"*

<details class="border rounded p-3 my-3" markdown="1">
<summary style="cursor: pointer;"><b>Proof of $$\mathbb{R} \sim \mathbb{R}^2$$</b> <span class="text-muted font-italic">(click to reveal)</span></summary>

By cardinal arithmetic:
$$
\vert \mathbb{R}^2 \vert = \vert \mathbb{R} \times \mathbb{R} \vert = \mathfrak{c} \cdot \mathfrak{c} = 2^{\aleph_0} \cdot 2^{\aleph_0} = 2^{\aleph_0 + \aleph_0} = 2^{\aleph_0} = \mathfrak{c} = \vert \mathbb{R} \vert
$$
where $$2^\kappa \cdot 2^\lambda = 2^{\kappa + \lambda}$$ and $$\aleph_0 + \aleph_0 = \aleph_0$$.

<div style="text-align: right;">$$\boldsymbol{Q.E.D.}$$</div>

</details>

---

### 6. The Naming of the Infinite: Alephs and Beths

Both scales are indexed by the [ordinal numbers](/blog/2026/queues-and-ordinal-numbers/) ($$\alpha \in \mathbf{Ord}$$):

#### The Aleph Hierarchy ($$\aleph_\alpha$$): Well-Ordered Magnitudes
* **$$\aleph_0 := \vert \mathbb{N} \vert$$:** The smallest infinite cardinal.
* **$$\aleph_{\alpha + 1}$$:** The immediate cardinal successor to $$\aleph_\alpha$$.
* **$$\aleph_\lambda := \sup_{\beta < \lambda} \aleph_\beta$$** for limit ordinals $$\lambda$$.

#### The Beth Hierarchy ($$\beth_\alpha$$): Power Set Iterations
* **$$\beth_0 := \aleph_0$$**
* **$$\beth_{\alpha + 1} := 2^{\beth_\alpha} = \vert \mathcal{P}(\beth_\alpha) \vert$$**
* **$$\beth_\lambda := \sup_{\beta < \lambda} \beth_\beta$$** for limit ordinals $$\lambda$$.

The first stages evaluate to:
* **$$\beth_0 = \aleph_0$$** (countable sets)
* **$$\beth_1 = 2^{\aleph_0} = \vert \mathbb{R} \vert$$**, denoted by the Fraktur letter $$\mathfrak{c}$$ (the *continuum*):
  $$
  \mathfrak{c} := 2^{\aleph_0} = \beth_1
  $$
* **$$\beth_2 = 2^\mathfrak{c} = \vert \mathcal{P}(\mathbb{R}) \vert$$**, and so on.

#### The Continuum Problem
By Cantor’s Theorem, $$\aleph_1 \le \beth_1$$. Does:
$$
\aleph_1 = \beth_1 \quad (\text{that is, } \aleph_1 = \mathfrak{c})
$$
This is Cantor’s **Continuum Hypothesis ($\mathrm{CH}$)**. Geometrically:

> **The Continuum Hypothesis (Geometric Formulation):**  
> Every infinite subset of $$\mathbb{R}$$ is either countable or equinumerous to $$\mathbb{R}$$.

The **Generalized Continuum Hypothesis ($\mathrm{GCH}$)** asserts:
$$
\forall \alpha \in \mathbf{Ord} \ \aleph_\alpha = \beth_\alpha
$$

#### The Multiverse of Set Theory
As Kurt Gödel (1940) and Paul Cohen (1963) demonstrated, $$\mathrm{CH}$$ is [independent of \(\mathrm{ZFC}\)](/blog/2026/zfc-axioms/): it can neither be proved nor disproved. 

Independence signifies that $$\mathrm{ZFC}$$ admits different, equally consistent mathematical models: Gödel’s *constructible universe* $$\mathbf{L}$$ satisfies $$\mathrm{GCH}$$, while Cohen’s *forcing* models violate it (e.g. producing universes where $$2^{\aleph_0} = \aleph_2$$). 

---

### 7. Exercises

#### 1. Finite Binary Strings
Let $$\Sigma = \{0, 1\}$$, and let $$\Sigma^*$$ denote the set of all finite strings over $$\Sigma$$. Prove that $$\Sigma^* \sim \mathbb{N}$$.

<details class="border rounded p-3 my-3" markdown="1">
<summary style="cursor: pointer;"><b>Solution</b> <span class="text-muted font-italic">(click to reveal)</span></summary>

Prepend the digit $$1$$ to any string $$w \in \Sigma^*$$, and evaluate as a binary integer:
$$
f(w) := \operatorname{val}_2(1w) - 1
$$
Because every positive integer has a unique binary representation starting with $$1$$, subtracting $$1$$ yields a bijection $$f \colon \Sigma^* \longrightarrow \mathbb{N}$$.

<div style="text-align: right;">$$\boldsymbol{Q.E.D.}$$</div>

</details>

---

#### 2. Constructive Proof of $$\mathbb{R} \sim \mathbb{R}^n$$
Prove that $$\mathbb{R} \sim \mathbb{R}^n$$ for any $$n \ge 1$$ constructively without the Axiom of Choice.

<details class="border rounded p-3 my-3" markdown="1">
<summary style="cursor: pointer;"><b>Solution</b> <span class="text-muted font-italic">(click to reveal)</span></summary>

It suffices to prove $$(0, 1) \sim (0, 1)^2$$. 

1. **Injection $$g \colon (0, 1) \longrightarrow (0, 1)^2$$:** $$g(x) := (x, 1/2)$$.
2. **Injection $$f \colon (0, 1)^2 \longrightarrow (0, 1)$$:** Represent elements via non-terminating decimal expansions without trailing nines:
   $$
   x = 0.x_1 x_2 x_3 \dots, \quad y = 0.y_1 y_2 y_3 \dots
   $$
   Interleave digits:
   $$
   f(x, y) := 0.x_1 y_1 x_2 y_2 x_3 y_3 \dots
   $$
   Because neither sequence ends in trailing nines, the interleaved expansion does not end in trailing nines, ensuring injectivity.

By the Schröder–Bernstein Theorem (which is constructive), $$(0, 1) \sim (0, 1)^2$$.

<div style="text-align: right;">$$\boldsymbol{Q.E.D.}$$</div>

</details>

---

#### 3. Countability of the Algebraic Numbers
A real number is **algebraic** if it is a root of a non-zero polynomial with integer coefficients. Prove that the set of all algebraic numbers $$\mathbb{A}$$ is countable. Conclude that transcendental numbers possess cardinality $$\mathfrak{c}$$.

<details class="border rounded p-3 my-3" markdown="1">
<summary style="cursor: pointer;"><b>Solution</b> <span class="text-muted font-italic">(click to reveal)</span></summary>

Each polynomial $$P(x) = a_d x^d + \dots + a_0 \in \mathbb{Z}[x]$$ is identified with $$(a_0, \dots, a_d) \in \mathbb{Z}^{d+1} \sim \mathbb{N}$$. The set of all integer polynomials is a countable union of countable sets:
$$
\mathbb{Z}[x] = \bigcup_{d=0}^\infty \mathbb{Z}^{d+1} \sim \mathbb{N}
$$
Each non-zero polynomial has at most $$d$$ roots. Thus the set of algebraic numbers $$\mathbb{A}$$ is a countable union of finite sets, hence countable: $$\vert \mathbb{A} \vert = \aleph_0$$.

The set of transcendental numbers is $$\mathbb{T} := \mathbb{R} \setminus \mathbb{A}$$. By cardinal arithmetic:
$$
\vert \mathbb{R} \vert = \vert \mathbb{T} \cup \mathbb{A} \vert = \vert \mathbb{T} \vert + \aleph_0 = \max\{\vert \mathbb{T} \vert, \aleph_0\} = \mathfrak{c} \implies \vert \mathbb{T} \vert = \mathfrak{c}
$$

<div style="text-align: right;">$$\boldsymbol{Q.E.D.}$$</div>

</details>

---

#### 4. The Cardinality of Continuous Functions
Let $$C(\mathbb{R})$$ denote the set of continuous functions from $$\mathbb{R}$$ to $$\mathbb{R}$$. Prove that $$\vert C(\mathbb{R}) \vert = \mathfrak{c}$$.

<details class="border rounded p-3 my-3" markdown="1">
<summary style="cursor: pointer;"><b>Solution</b> <span class="text-muted font-italic">(click to reveal)</span></summary>

* **Lower bound:** Constant functions yield an injection $$\mathbb{R} \hookrightarrow C(\mathbb{R})$$, so $$\mathfrak{c} \le \vert C(\mathbb{R}) \vert$$.
* **Upper bound:** Because $$\mathbb{Q}$$ is dense in $$\mathbb{R}$$, every continuous function is determined by its values on $$\mathbb{Q}$$. The restriction map $$f \mapsto f \vert_{\mathbb{Q}}$$ is an injection $$C(\mathbb{R}) \hookrightarrow \mathbb{R}^\mathbb{Q}$$.

By cardinal arithmetic:
$$
\vert C(\mathbb{R}) \vert \le \vert \mathbb{R}^\mathbb{Q} \vert = \vert \mathbb{R} \vert^{\vert \mathbb{Q} \vert} = \mathfrak{c}^{\aleph_0} = \left(2^{\aleph_0}\right)^{\aleph_0} = 2^{\aleph_0 \cdot \aleph_0} = 2^{\aleph_0} = \mathfrak{c}
$$
By Schröder–Bernstein, $$\vert C(\mathbb{R}) \vert = \mathfrak{c}$$.

<div style="text-align: right;">$$\boldsymbol{Q.E.D.}$$</div>

</details>

---

#### 5. Hilbert's Hotel: Absorbing an Element
Let $$A$$ be an infinite set and let $$x \notin A$$. Prove that $$A \cup \{x\} \sim A$$.

<details class="border rounded p-3 my-3" markdown="1">
<summary style="cursor: pointer;"><b>Solution</b> <span class="text-muted font-italic">(click to reveal)</span></summary>

Let $$S = \{s_0, s_1, \dots\} \subseteq A$$ be a countably infinite subset. Define $$f \colon A \cup \{x\} \longrightarrow A$$ by:
$$
f(u) := \begin{cases} s_0 & \text{if } u = x, \\ s_{n+1} & \text{if } u = s_n \in S, \\ u & \text{if } u \in A \setminus S. \end{cases}
$$
Because $$f \vert_{S \cup \{x\}}$$ is a bijection onto $$S$$ and $$f \vert_{A \setminus S}$$ is the identity, $$f$$ is a bijection.

<div style="text-align: right;">$$\boldsymbol{Q.E.D.}$$</div>

</details>
"""

with open('_posts/2026-09-12-counting.md', 'w', encoding='utf-8') as f:
    f.write(counting_content.strip() + '\n')
print("Successfully restored direct proof formatting in _posts/2026-09-12-counting.md.")
EOF

python3 fix_all.py
rm -f fix_all.py
git add -A
git commit -m "Fix duplicate post in _posts and restore direct markdown proof formatting"
git push origin main