cat << 'EOF' > apply_includes.py
# -----------------------------------------------------------------------------
# 1. Write _posts/2026-09-12-counting.md using {% include proofs/... %}
# -----------------------------------------------------------------------------
counting_post = r"""---
layout: post
title: "What Does it Mean to Count?"
date: 2026-09-12
description: "Equinumerosity, Hume's Principle, the Schröder-Bernstein Theorem, and the naming of the infinite."
tags: [set-theory, discrete-mathematics, logic]
categories: [mathematics]
---

Cardinality answers the fundamental question: *"When do two sets have the same size?"*

For finite collections, we verify equality by matching: if every person in a room wears a hat and no hats remain, the collections are equal in size, without counting sequentially. For infinite collections, this bijective matching becomes our foundational definition.

---

### 1. Equinumerosity and the Pre-order of Sizes

* Two sets $$A$$ and $$B$$ are **equinumerous** ($$A \sim B$$) if there exists a bijection $$f \colon A \longrightarrow B$$. Equinumerosity is an equivalence relation.
* We define $$A \le_c B$$ if there exists an injection $$f \colon A \longrightarrow B$$.

#### Hume’s Principle
Just as the Axiom of Extensionality formalises Leibniz's Law of the Identity of Indiscernibles, Cantor's definition of equinumerosity formalises **Hume’s Principle**: two collections have the same cardinal number if and only if their elements can be placed in one-to-one correspondence. In *A Treatise of Human Nature* (1739), David Hume observed:

> *"When two numbers are so combined as that the one has always an unit answering to every unit of the other, we pronounce them equal."*

Gottlob Frege adopted this as the foundation from which Peano arithmetic could be derived. Bijective pairing frees cardinality from the constraints of finiteness.

---

### 2. The Schröder–Bernstein Theorem

Reflexivity ($$A \le_c A$$) and transitivity ($$A \le_c B \land B \le_c C \rightarrow A \le_c C$$) are immediate. **Antisymmetry** ($$A \le_c B \land B \le_c A \implies A \sim B$$) is non-trivial:

> **Theorem (Schröder–Bernstein, 1897):** Let $$A$$ and $$B$$ be sets. If there exist injections $$f \colon A \longrightarrow B$$ and $$g \colon B \longrightarrow A$$, then there exists a bijection $$h \colon A \longrightarrow B$$.

*Historical Note:* Stated by Cantor in 1887 without proof, and proved by Dedekind in 1887 (unpublished). Felix Bernstein provided the first correct proof in 1897 independent of the Axiom of Choice. Ernst Schröder published a flawed proof in 1898, had its errors exposed by Alwin Korselt in 1902, confirmed the mistake, and died shortly after.

<details class="border rounded p-3 my-3" markdown="1">
<summary style="cursor: pointer;"><b>Proof (König, 1906)</b> <span class="text-muted font-italic">(click to reveal)</span></summary>

{% include proofs/schroder_bernstein.md %}

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

{% include proofs/hessenberg_theorem.md %}

</details>

---

### 4. Cantor's Theorem: The Scale of Infinities

> **Theorem (Cantor):** For any set $$A$$, there exists no surjection $$f \colon A \longrightarrow \mathcal{P}(A)$$.

<details class="border rounded p-3 my-3" markdown="1">
<summary style="cursor: pointer;"><b>Proof</b> <span class="text-muted font-italic">(click to reveal)</span></summary>

{% include proofs/cantor_theorem.md %}

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

{% include proofs/real_continuum_power_set.md %}

</details>

5. **The Continuum is Scale-Invariant: $$(0, 1) \sim \mathbb{R}$$**

<details class="border rounded p-3 my-3" markdown="1">
<summary style="cursor: pointer;"><b>Proof of $$(0, 1) \sim \mathbb{R}$$</b> <span class="text-muted font-italic">(click to reveal)</span></summary>

{% include proofs/real_interval_bijection.md %}

</details>

6. **The Dimension Paradox: $$\mathbb{R} \sim \mathbb{R}^2$$**  
In 1877, Cantor proved that a 1D line and a 2D plane possess the same cardinality, writing to Dedekind: *"Je le vois, mais je ne le crois pas!"*

<details class="border rounded p-3 my-3" markdown="1">
<summary style="cursor: pointer;"><b>Proof of $$\mathbb{R} \sim \mathbb{R}^2$$</b> <span class="text-muted font-italic">(click to reveal)</span></summary>

{% include proofs/real_plane_dimension.md %}

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
    f.write(counting_post.strip() + '\n')
print("Updated _posts/2026-09-12-counting.md cleanly.")

# -----------------------------------------------------------------------------
# 2. Write _posts/2026-09-12-first-definitions-analysis.md using includes
# -----------------------------------------------------------------------------
analysis_post = r"""---
layout: post
title: "The ε–N Definition as a Two-Player Game"
date: 2026-09-12
description: "The least upper bound property of ℝ and viewing Cauchy convergence as an interactive game."
tags: [analysis, mathematics, teaching]
categories: [mathematics]
---

### 1. The Completeness Axiom

The set of rational numbers $$\mathbb{Q}$$ is countable, yet between any two rationals lies another. Despite this density, $$\mathbb{Q}$$ has gaps: the sequence of decimal approximations of $$\sqrt{2}$$:

$$
1, \quad \frac{14}{10}, \quad \frac{141}{100}, \quad \frac{1414}{1000}, \quad \frac{14142}{10000}, \quad \dots
$$

consists entirely of rational numbers, but has no limit in $$\mathbb{Q}$$.

> **Axiom (Completeness):** If $$\emptyset \ne A \subseteq \mathbb{R}$$ is bounded from above, then:
>
> $$
> \sup A \in \mathbb{R}
> $$

This axiom distinguishes $$\mathbb{R}$$ from $$\mathbb{Q}$$. Two foundational consequences follow:

#### Theorem (Archimedean Property)
$$\forall x, y \in \mathbb{R} \ (x > 0 \rightarrow \exists n \in \mathbb{N} \ nx > y)$$

<details class="border rounded p-3 my-3" markdown="1">
<summary style="cursor: pointer;"><b>Proof</b> <span class="text-muted font-italic">(click to reveal)</span></summary>

{% include proofs/archimedean_property.md %}

</details>

---

#### Theorem (Density of $$\mathbb{Q}$$ in $$\mathbb{R}$$)
$$\forall x, y \in \mathbb{R} \ (x < y \rightarrow \exists q \in \mathbb{Q} \ x < q < y)$$

<details class="border rounded p-3 my-3" markdown="1">
<summary style="cursor: pointer;"><b>Proof</b> <span class="text-muted font-italic">(click to reveal)</span></summary>

{% include proofs/density_of_rationals.md %}

</details>

---

### 2. Convergence as a Two-Player Game

A real sequence is a function $$a \colon \mathbb{N} \longrightarrow \mathbb{R}$$, denoted $$a_n := a(n)$$.

> **Definition:** A sequence $$(a_n)$$ converges to $$L \in \mathbb{R}$$, written $$\lim_{n \to \infty} a_n = L$$, if:
>
> $$
> \forall \varepsilon > 0 \ \exists N \in \mathbb{N} \ \forall n \ge N \ \vert a_n - L \vert < \varepsilon
> $$

This definition can be formalised as an interactive game against an adversary:

1. The adversary challenges with a tolerance $$\varepsilon > 0$$.
2. You reply with an index threshold $$N \in \mathbb{N}$$.
3. The adversary selects any index $$n \ge N$$.
4. You win if $$\vert a_n - L \vert < \varepsilon$$, and lose otherwise.

The sequence converges to $$L$$ if and only if you possess a winning strategy: a function that computes a valid $$N$$ for any given $$\varepsilon$$.

---

### 3. Example

**Proposition:** $$\lim_{n \to \infty} \frac{3}{n} = 0$$.

**Proof:** Let $$\varepsilon > 0$$. By the Archimedean property, there exists $$N \in \mathbb{N}$$ such that $$N > \frac{3}{\varepsilon}$$. 

For every $$n \ge N$$, since $$n \ge 1 > 0$$, we have:
$$
0 < \frac{3}{n} \le \frac{3}{N} < \varepsilon
$$
Because $$\frac{3}{n} > 0$$, we have $$\left\vert \frac{3}{n} - 0 \right\vert = \frac{3}{n}$$. Thus:
$$
\left\vert \frac{3}{n} - 0 \right\vert < \varepsilon
$$

<div style="text-align: right;">$$\boldsymbol{Q.E.D.}$$</div>

---

### 4. Exercises

#### 1. Boundedness of Convergent Sequences
Prove that every convergent sequence is bounded.

<details class="border rounded p-3 my-3" markdown="1">
<summary style="cursor: pointer;"><b>Solution</b> <span class="text-muted font-italic">(click to reveal)</span></summary>

Let $$(a_n)$$ converge to $$L$$. Setting $$\varepsilon = 1$$ in the definition of convergence, there exists $$N \in \mathbb{N}$$ such that for all $$n \ge N$$:
$$
\vert a_n - L \vert < 1
$$
By the triangle inequality:
$$
\vert a_n \vert = \vert (a_n - L) + L \vert \le \vert a_n - L \vert + \vert L \vert < \vert L \vert + 1
$$
Thus, every term beyond index $$N$$ is strictly bounded by $$\vert L \vert + 1$$.

The initial segment $$\{a_1, \dots, a_{N-1}\}$$ is finite. Define:
$$
M := \max\left(\{\vert a_n \vert \mid n < N\} \cup \{\vert L \vert + 1\}\right)
$$
Then for every $$n \in \mathbb{N}$$, we have $$\vert a_n \vert \le M$$. Hence $$(a_n)$$ is bounded.

<div style="text-align: right;">$$\boldsymbol{Q.E.D.}$$</div>

</details>

---

#### 2. The Triangle Inequality (Abbott)
Prove that $$\vert x + y \vert \le \vert x \vert + \vert y \vert$$ by expanding $$(\vert x \vert + \vert y \vert)^2$$ and using the inequality $$ab \le \vert ab \vert$$.

<details class="border rounded p-3 my-3" markdown="1">
<summary style="cursor: pointer;"><b>Solution</b> <span class="text-muted font-italic">(click to reveal)</span></summary>

Since both sides are non-negative, the inequality is equivalent to comparing their squares:
$$
\vert x + y \vert \le \vert x \vert + \vert y \vert \iff \vert x + y \vert^2 \le (\vert x \vert + \vert y \vert)^2
$$
Expanding the right-hand side:
$$
(\vert x \vert + \vert y \vert)^2 = \vert x \vert^2 + 2\vert x \vert \vert y \vert + \vert y \vert^2 = x^2 + 2\vert xy \vert + y^2
$$
Expanding the left-hand side:
$$
\vert x + y \vert^2 = (x + y)^2 = x^2 + 2xy + y^2
$$
Because $$xy \le \vert xy \vert$$, we have $$2xy \le 2\vert xy \vert$$, and therefore:
$$
x^2 + 2xy + y^2 \le x^2 + 2\vert xy \vert + y^2 \implies \vert x + y \vert^2 \le (\vert x \vert + \vert y \vert)^2
$$
Taking positive square roots of both sides yields:
$$
\vert x + y \vert \le \vert x \vert + \vert y \vert
$$

<div style="text-align: right;">$$\boldsymbol{Q.E.D.}$$</div>

</details>

---

#### 3. The Squeeze Theorem
Suppose $$(x_n)$$ and $$(z_n)$$ both converge to $$L$$, and $$\forall n \in \mathbb{N} \ x_n \le y_n \le z_n$$. Prove that $$\lim_{n \to \infty} y_n = L$$.

<details class="border rounded p-3 my-3" markdown="1">
<summary style="cursor: pointer;"><b>Solution</b> <span class="text-muted font-italic">(click to reveal)</span></summary>

Let $$\varepsilon > 0$$. 

* Since $$\lim_{n \to \infty} x_n = L$$, there exists $$N_1 \in \mathbb{N}$$ such that for all $$n \ge N_1$$:
  $$
  \vert x_n - L \vert < \varepsilon \iff L - \varepsilon < x_n < L + \varepsilon
  $$
* Since $$\lim_{n \to \infty} z_n = L$$, there exists $$N_2 \in \mathbb{N}$$ such that for all $$n \ge N_2$$:
  $$
  \vert z_n - L \vert < \varepsilon \iff L - \varepsilon < z_n < L + \varepsilon
  $$

Define $$N := \max(N_1, N_2)$$. Then for every $$n \ge N$$:
$$
L - \varepsilon < x_n \le y_n \le z_n < L + \varepsilon
$$
In particular:
$$
L - \varepsilon < y_n < L + \varepsilon \iff -\varepsilon < y_n - L < \varepsilon \iff \vert y_n - L \vert < \varepsilon
$$
Hence $$\lim_{n \to \infty} y_n = L$$.

<div style="text-align: right;">$$\boldsymbol{Q.E.D.}$$</div>

</details>
"""

with open('_posts/2026-09-12-first-definitions-analysis.md', 'w', encoding='utf-8') as f:
    f.write(analysis_post.strip() + '\n')
print("Updated _posts/2026-09-12-first-definitions-analysis.md cleanly.")
EOF

python3 apply_includes.py
rm -f apply_includes.py update_posts_with_includes.py