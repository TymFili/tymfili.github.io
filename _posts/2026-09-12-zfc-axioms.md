---
layout: post
title: "Axioms of mathematics: trivialities, hygiene and insanity"
date: 2026-09-12
description: "A survey of the Zermelo-Fraenkel axioms, the necessity of parameters in schemata, and the strange nature of Foundation and Choice."
tags: [set-theory, logic, foundations]
categories: [mathematics]
---

Naive set theory treats a set as any collection determined by a property: $$\{x \mid \varphi(x)\}$$. As Russell demonstrated, this unrestricted comprehension principle immediately destroys itself via the contradictory collection $$R := \{x \mid x \notin x\}$$.

The Zermelo–Fraenkel axiomatisation with Choice ($$\mathrm{ZFC}$$) does not attempt to define what a set *is*; rather, it formalises how sets *behave* in first-order logic over the single primitive binary relation symbol $$\in$$.

---

### 1. Structural and Combinatorial Axioms

The first group of axioms establishes identity and elementary set-building operations:

* **Extensionality ($$\mathbf{Ex}$$):** Sets with identical elements are identical:
  $$
  \forall x \forall y \ (\forall z \ (z \in x \iff z \in y) \rightarrow x = y)
  $$

#### Extensionality and Leibniz’s Law
Extensionality is the set-theoretic formalisation of Leibniz's principle of the **Identity of Indiscernibles** (*principium identitatis indiscernibilium*): if two objects cannot be distinguished by any observation or predicate in our language, they must be identical. 

Because $$\in$$ is the sole non-logical relation symbol in our signature, two sets sharing the exact same members are entirely indistinguishable to the first-order universe. Extensionality asserts that a set has no hidden essence, internal label, or historical origin: it is characterised purely by its elements.

---

* **Empty Set ($$\mathbf{ES}$$):** There exists an uninhabited set:
  $$
  \exists x \forall y \ \neg (y \in x)
  $$
* **Pairing ($$\mathbf{Pa}$$):** For any two sets, their unordered pair exists:
  $$
  \forall x \forall y \exists z \forall w \ (w \in z \iff (w = x \lor w = y))
  $$
* **Union ($$\mathbf{U}$$):** The union of elements of a set exists:
  $$
  \forall x \exists y \forall z \ (z \in y \iff \exists w \ (z \in w \land w \in x))
  $$
* **Power Set ($$\mathbf{PS}$$):** The collection of all subsets of a set forms a set:
  $$
  \forall x \exists y \forall z \ (z \in y \iff \forall w \ (w \in z \rightarrow w \in x))
  $$
* **Infinity ($$\mathbf{I}$$):** There exists an inductive set:
  $$
  \exists x \ (\emptyset \in x \land \forall y \ (y \in x \rightarrow y \cup \{y\} \in x))
  $$

#### The Empty Set Dilemma in the Axiom of Infinity
Notice that the Axiom of Infinity references $$\emptyset$$. In first-order logic over the signature $$\{\in\}$$, $$\emptyset$$ is not a primitive constant. There are two ways to interpret this:

1. **$$\emptyset$$ as pure syntactic shorthand:** The expression $$\emptyset \in x$$ is an abbreviation for:
   $$
   \exists e \in x \ (\forall z \ \neg(z \in e))
   $$
   Under this reading, Infinity itself guarantees that an empty set exists inside $$x$$. In the presence of Infinity and Specification (or Replacement), the standalone Axiom of Empty Set ($$\mathbf{ES}$$) becomes **formally redundant**.
2. **$$\emptyset$$ as a designated constant:** If $$\emptyset$$ is treated as a primitive symbol of the language, then $$\mathbf{ES}$$ is required as an independent structural axiom to guarantee its existence before Infinity can be stated.

Standard presentations retain $$\mathbf{ES}$$ explicitly, providing a clean ground floor before introducing the infinite.

---

### 2. Axiom Schemata and the Necessity of Parameters

The axioms of **Specification** and **Replacement** cannot be expressed as single first-order statements. They are **axiom schemata**—infinite families containing one axiom for each first-order formula $$\varphi$$.

#### Specification (Restricted Comprehension, $$\mathbf{S}$$)
Naive comprehension allowed defining sets out of thin air: $$\{z \mid \varphi(z)\}$$. Specification acts as Zermelo’s razor: you cannot create a set from the entire universe; you must already hold a bounded set $$x$$ in your hands, and you can only *filter* or *carve out* a subcollection of elements that satisfy $$\varphi$$:
$$
\forall \bar{p} \forall x \exists y \forall z \ (z \in y \iff (z \in x \land \varphi(z, \bar{p})))
$$

#### Replacement ($$\mathbf{R}$$)
Specification only allows us to make sets *smaller* (taking subsets of existing sets). It cannot construct larger infinite collections (such as collecting $$\{V_0, V_1, V_2, \dots\}$$ into a single set). 

Replacement, formulated by Fraenkel and Skolem, asserts that **the image of a set under a definable function is a set**. If a formula $$\varphi(w, z, \bar{p})$$ behaves functionally on a set $$x$$ (associating to each $$w \in x$$ a unique target $$z$$), then the collection of all such targets forms a set:
$$
\forall \bar{p} \forall x \ (\forall w \in x \exists! z \ \varphi(w, z, \bar{p}) \rightarrow \exists y \forall z \ (z \in y \iff \exists w \in x \ \varphi(w, z, \bar{p})))
$$

---

### Why are Parameters Vital in Schemata?

Notice the tuple of variables $$\bar{p} = (p_1, \dots, p_k)$$ prefixed with universal quantifiers $$\forall \bar{p}$$. These are **parameters**.

Why do they matter?
The formal language of set theory has a finite alphabet. Consequently, there are only **countably many parameter-free formulae** $$\varphi(z)$$. 

If Specification and Replacement did not permit parameters, we could only construct subsets that are definable in the absolute, empty language. But by Cantor’s theorem, the power set $$\mathcal{P}(\omega)$$ is uncountable. A parameter-free schema would only ever allow us to carve out a countable collection of subsets, hopelessly crippling mathematical analysis.

More fundamentally, without parameters we could not even define the elementary intersection of two arbitrary sets:
$$
A \cap B = \{z \in A \mid z \in B\}
$$
Here, the existing set $$B$$ serves as an indispensable **parameter** in the condition $$\varphi(z, B) \equiv z \in B$$. Allowing parameters lets our schemata reference the uncountable wealth of sets that already exist in the universe, rather than restricting mathematics to what is syntactically nameable from scratch.

---

### 3. The Axiom of Foundation: Aesthetic Hygiene

* **Foundation / Regularity ($$\mathbf{F}$$):** Every non-empty set contains an $$\in$$-minimal element:
  $$
  \forall x \ (x \ne \emptyset \rightarrow \exists y \in x \ (y \cap x = \emptyset))
  $$

Foundation is by far the strangest axiom in $$\mathrm{ZF}$$. 

Most axioms are **generative**: they take existing objects and guarantee the existence of richer collections (Pairing, Union, Power Set, Infinity). Foundation does the exact opposite: **it builds nothing**. Its sole role is restrictive.

By requiring an $$\in$$-minimal element, Foundation rules out circular and self-referential pathologies:
1. It forbids a set from containing itself ($$x \in x$$).
2. It forbids circular chains ($$x \in y \in x$$).
3. It forbids infinite descending membership chains:
   $$
   \dots \in x_3 \in x_2 \in x_1 \in x_0
   $$

#### The Cumulative Hierarchy
Foundation forces the universe of all sets $$\mathbf{V}$$ to coincide with the **cumulative hierarchy** built upwards from the empty set along the ordinal numbers:

<div class="text-center my-4">
  <img src="{{ '/assets/img/von_neumann_universe.svg' | relative_url }}" class="img-fluid rounded border shadow-sm" style="max-width: 88%; height: auto;" alt="Von Neumann Cumulative Hierarchy">
  <p class="text-muted mt-2 small"><em>Figure: The cumulative hierarchy \(V_\alpha\) stratified along the ordinal spine \(\mathbf{Ord}\).</em></p>
</div>

The stages are defined by transfinite recursion:
$$
V_0 := \emptyset, \quad V_{\alpha + 1} := \mathcal{P}(V_\alpha), \quad V_\lambda := \bigcup_{\beta < \lambda} V_\beta \quad (\text{for limit } \lambda)
$$

#### What is $$\mathrm{HF}$$?
At stage $$\omega$$, we reach the collection of **Hereditarily Finite sets** ($$\mathrm{HF} = V_\omega$$). A set is hereditarily finite if:
* It is finite,
* All its elements are finite,
* All their elements are finite, and so on, terminating at $$\emptyset$$.

$$V_\omega$$ contains all natural numbers (modelled as von Neumann ordinals: $$0 = \emptyset, 1 = \{0\}, 2 = \{0, 1\}, \dots$$), all finite strings, and all finite mathematical structures. Remarkably, **$$V_\omega$$ satisfies every single axiom of $$\mathrm{ZFC}$$ except the Axiom of Infinity**. It is a complete universe for finite mathematics and is bi-interpretable with Peano Arithmetic ($$\mathrm{PA}$$).

Only at the next stage, $$V_{\omega+1} = \mathcal{P}(V_\omega)$$, do infinite sets emerge—and because $$\mathcal{P}(\omega) \subseteq V_{\omega+1}$$, the continuum of real numbers $$\mathbb{R}$$ enters the universe here.

---

### 4. The Axiom of Choice: The Non-Constructive Oracle

* **Axiom of Choice ($$\mathbf{AC}$$):** For any family $$\mathcal{A}$$ of non-empty sets, there exists a choice function $$f \colon \mathcal{A} \longrightarrow \bigcup \mathcal{A}$$ such that:
  $$
  \forall A \in \mathcal{A} \ f(A) \in A
  $$

#### Why the Choice Function Formulation?
Formulating Choice via a function $$f$$ is far more intuitive than requiring families of pairwise disjoint sets:
1. **No artificial disjointness:** The sets in $$\mathcal{A}$$ may overlap arbitrarily; $$f$$ simply selects a representative from each container.
2. **Pure informational essence:** The function $$f$$ represents the *pure act of selection*: it maps each set $$A$$ directly to an element $$f(A) \in A$$.

#### The Insanity of Choice
Every other axiom in $$\mathrm{ZFC}$$ provides an explicit condition or a constructive recipe for determining elements. Choice does not. It asserts the existence of an object **while remaining completely silent about how to identify or construct it**.

This non-constructive license yields necessary yet surreal consequences:

1. **The Well-Ordering of $$\mathbb{R}$$:** Choice is equivalent to Zermelo’s Well-Ordering Theorem ($$\mathbf{WO}$$). It implies that the real numbers $$\mathbb{R}$$ can be well-ordered—meaning every non-empty subset of reals has a least element. Yet no human will ever write down, define, or compute such an ordering.
2. **The Banach–Tarski Paradox:** A solid unit ball in $$\mathbb{R}^3$$ can be partitioned into finitely many non-measurable pieces and reassembled using only rigid rotations and translations into two identical copies of the original ball.
3. **Non-Measurable Sets:** Vitali sets cannot be assigned any consistent geometric probability or Lebesgue measure.

Without Choice, abstract algebra cannot guarantee that every vector space has a basis, and topology loses Tychonoff’s theorem. With Choice, geometry loses the physical conservation of volume. 

It remains the indispensable, non-constructive engine of modern mathematics—at once deeply necessary and mathematically insane.
