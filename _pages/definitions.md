---
layout: page
title: Definitions
permalink: /definitions/
description: A curated reference library of formal mathematical definitions from logic and set theory.
nav: true
nav_order: 4
---

Welcome to the central dictionary of mathematical definitions. This archive establishes the formal notation and concepts from [Tymoteusz Filipiak's Lecture Notes on Mathematical Logic](/assets/pdf/logic.pdf), serving as the foundational lexicon for the blog and the [Theorems & Proofs Library](/theorems/).

---

### Table of Contents
* **Informal Logic & Foundations (Chapter 1):**
  * [Proposition](#def-proposition) &bull; [Argument](#def-argument) &bull; [Validity](#def-validity) &bull; [Soundness](#def-soundness)
* **Naive Set Theory (Chapter 1):**
  * [Set & Membership](#def-set) &bull; [Subset & Extensional Equality](#def-subset) &bull; [Comprehension](#def-comprehension) &bull; [Empty Set](#def-empty-set) &bull; [Ordered Pair](#def-ordered-pair) &bull; [Cartesian Product & Powers](#def-cartesian-product) &bull; [Power Set](#def-power-set) &bull; [Unions & Intersections](#def-union-intersection)
* **Relations & Functions (Chapter 1):**
  * [Relations & Arity](#def-relation) &bull; [Domain & Range](#def-domain-range) &bull; [Functional Relation](#def-functional-relation) &bull; [Function](#def-function) &bull; [Composition](#def-composition) &bull; [Identity & Diagonal](#def-diagonal-relation) &bull; [Inclusion](#def-inclusion) &bull; [Injection](#def-injection) &bull; [Surjection](#def-surjection) &bull; [Bijection & Inverses](#def-bijection) &bull; [Image & Preimage](#def-image-preimage) &bull; [Restriction](#def-restriction) &bull; [Function Sets Bᴬ](#def-function-set) &bull; [Numbers (ℕ, ℤ)](#def-natural-integers)
* **Equivalence Relations & Quotients (Chapter 1):**
  * [Relational Properties](#def-relation-properties) &bull; [Equivalence Relation](#def-equivalence-relation) &bull; [Equivalence Class](#def-equivalence-class) &bull; [Quotient Set](#def-quotient-set) &bull; [Partition](#def-partition)
* **Order Theory (Chapter 1):**
  * [Strict & Weak Relations](#def-strict-weak-relations) &bull; [Poset & Total Order](#def-poset) &bull; [Initial Segment](#def-initial-segment) &bull; [Bounds, Extremals, and Min/Max](#def-bounds-min-max) &bull; [Chain](#def-chain) &bull; [Well-Ordering (Woset)](#def-well-ordering) &bull; [Successor Element](#def-successor-element) &bull; [Well-Founded Relation](#def-well-founded) &bull; [Order Boundedness & Density](#def-order-boundedness)
* **Lattice Theory & Fixed Points (Chapter 1):**
  * [Lattice](#def-lattice) &bull; [Complete Lattice](#def-complete-lattice) &bull; [Monotone Function](#def-monotone-function) &bull; [Fixed Point & Least Fixed Point (μf)](#def-fixed-point)
* **Formal Languages (Chapter 2):**
  * [Alphabet](#def-alphabet) &bull; [Strings (Σ*)](#def-strings) &bull; [Concatenation](#def-concatenation) &bull; [Language](#def-language) &bull; [Initial Segment of String](#def-string-initial-segment)
* **Propositional Calculus: Syntax (Chapter 3):**
  * [Variables, Connectives, and Formulae (Frm)](#def-pc-syntax) &bull; [Formula Complexity](#def-pc-complexity)
* **Propositional Calculus: Semantics (Chapter 3):**
  * [Valuation & Extended Interpretation](#def-pc-valuation) &bull; [Logical Equivalence](#def-pc-equivalence) &bull; [Tautology & Contradiction](#def-pc-tautology-contradiction) &bull; [Formula Satisfiability (PC)](#def-pc-satisfiability-formula) &bull; [Set Satisfiability (PC)](#def-pc-satisfiability-set) &bull; [Entailment (PC)](#def-pc-entailment) &bull; [Functional Completeness](#def-pc-functional-completeness)
* **Proof Theory (Chapter 4):**
  * [Proof System](#def-proof-system) &bull; [Formal Proof](#def-formal-proof) &bull; [Syntactic Provability (⊢) & Theorems](#def-provability) &bull; [Modus Ponens](#def-modus-ponens) &bull; [Tautology System](#def-tautology-system) &bull; [Hilbert System](#def-hilbert-system) &bull; [Consistency & Inconsistency](#def-consistency) &bull; [System Soundness & Completeness](#def-system-soundness-completeness) &bull; [Proof Trees & Discharging](#def-proof-tree) &bull; [Natural Deduction Derivation](#def-nd-derivation)
* **First-Order Logic: Syntax (Chapter 5):**
  * [Signature (σ)](#def-fol-signature) &bull; [First-Order Alphabet](#def-fol-alphabet) &bull; [Terms (Trm)](#def-fol-terms) &bull; [Atomic & Compound Formulae (Frm)](#def-fol-formulae) &bull; [Symbol Weight & Unique Readability](#def-fol-weight) &bull; [Free Variables (FV)](#def-fol-free-variables) &bull; [Precedence & Abbreviations](#def-fol-abbreviations) &bull; [Functional Formula](#def-fol-functional-formula)
* **First-Order Logic: Semantics (Chapter 5):**
  * [Structure (𝔄)](#def-fol-structure) &bull; [Variable Assignment](#def-fol-assignment) &bull; [Term Valuation Function](#def-fol-valuation-function) &bull; [Modified Assignment](#def-fol-modified-assignment) &bull; [Satisfaction Relation (⊨)](#def-fol-satisfaction) &bull; [Sentence](#def-sentence) &bull; [Truth in a Structure](#def-truth-structure) &bull; [Formula Validity & Satisfiability (FOL)](#def-fol-validity) &bull; [Model of a Theory](#def-model-theory) &bull; [First-Order Entailment](#def-fol-entailment) &bull; [Set Satisfiability (FOL)](#def-fol-set-satisfiability)
* **Metatheory of Classical Logic (Chapter 6):**
  * [Finite Satisfiability](#def-finitely-satisfiable) &bull; [Henkin Witness Property](#def-henkin-property) &bull; [Maximal Consistency](#def-maximally-consistent) &bull; [Canonical Term Structure (Verifier)](#def-term-verifier) &bull; [Quotient Model](#def-quotient-model)
* **Axiomatic Set Theory: Foundations & Classes (Chapter 7):**
  * [Language of Set Theory (∈)](#def-set-theory-language) &bull; [Kuratowski Ordered Pair](#def-ordered-pair-kuratowski) &bull; [Successor Set](#def-successor-set) &bull; [ZF⁻ and ZFC⁻](#def-z-minus-zf-minus) &bull; [Natural Numbers (ω, ℕ)](#def-omega-natural-numbers) &bull; [Transitive Set](#def-transitive-set) &bull; [Classes & Proper Classes (V)](#def-class-proper-class)
* **Axiomatic Set Theory: Ordinals & Choice (Chapter 7):**
  * [Order Isomorphism & Automorphism](#def-order-isomorphism) &bull; [Initial Segment Embedding (⊑)](#def-initial-segment-embedding) &bull; [Ordinal Number (Ord)](#def-ordinal-number) &bull; [Ordinal Bounds (sup, inf)](#def-ordinal-sup-inf) &bull; [Successor & Limit Ordinals](#def-successor-limit-ordinal) &bull; [Transfinite Recursion](#def-transfinite-recursion) &bull; [Ordinal Sequences & Limits](#def-ordinal-sequence) &bull; [Axiom of Choice (AC)](#def-axiom-choice)
* **Cardinal Numbers (Chapter 7):**
  * [Cardinality of a Set (|A|)](#def-cardinality-of-set) &bull; [Cardinal Number](#def-cardinal-number) &bull; [Cardinal Ordering (≤)](#def-cardinal-ordering) &bull; [Cardinal Arithmetic (+, ·, ^)](#def-cardinal-arithmetic)
* **Theory of Computation (Chapter 8):**
  * [Decidable Set](#def-decidable-set) &bull; [Semidecidable Set](#def-semidecidable-set) &bull; [Enumerator](#def-enumerator)

---

### Informal Logic & Foundations

<h4 id="def-proposition">Proposition</h4>

> **Definition:** A *proposition* is the meaning of a declarative sentence.

---

<h4 id="def-argument">Argument</h4>

> **Definition:** An *argument* is a collection of propositions called *premises* and a single proposition called the *conclusion*.

---

<h4 id="def-validity">Validity</h4>

> **Definition:** An argument is *valid* if, whenever all its premises are true, the conclusion must also be true.

---

<h4 id="def-soundness">Soundness</h4>

> **Definition:** An argument is *sound* if it is valid and all its premises are actually true.

---

### Naive Set Theory

<h4 id="def-set">Set & Membership</h4>

> **Definition:** A *set* is a collection of objects. If $$A$$ is a set, the statement $$a \in A$$ is read as *"$$a$$ is an element of $$A$$"* and is a logical sentence.

---

<h4 id="def-subset">Subset & Extensional Equality</h4>

> **Definition:** A set $$A$$ is a *subset* of $$B$$, written $$A \subseteq B$$, if:
> $$
> \forall x \ (x \in A \rightarrow x \in B)
> $$
> Equality of sets is defined extensionally:
> $$
> A = B \iff \forall x \ (x \in A \iff x \in B)
> $$

---

<h4 id="def-comprehension">Set Comprehension</h4>

> **Definition:** The expression $$A := \{x \mid \varphi(x)\}$$ is the set defined by:
> $$
> \forall x \ (x \in A \iff \varphi(x))
> $$
> Bounded comprehension within a set $$X$$ is defined as $$\{x \in X \mid \varphi(x)\} := \{x \mid x \in X \land \varphi(x)\}$$.

---

<h4 id="def-empty-set">Empty Set</h4>

> **Definition:** The *empty set* is defined by:
> $$
> \emptyset := \{x \mid \bot\}
> $$

---

<h4 id="def-ordered-pair">Ordered Pair</h4>

> **Definition:** An *ordered pair* $$(a, b)$$ is a mathematical object satisfying the characteristic property:
> $$
> (a, b) = (c, d) \iff a = c \land b = d
> $$

---

<h4 id="def-cartesian-product">Cartesian Product & Powers</h4>

> **Definition:** The *Cartesian product* of sets $$A$$ and $$B$$ is:
> $$
> A \times B := \{(a, b) \mid a \in A \land b \in B\}
> $$
> Cartesian powers are defined inductively by $$A^0 := \{\emptyset\}$$ and $$A^{n+1} := A^n \times A$$, taken as left-associative.

---

<h4 id="def-power-set">Power Set</h4>

> **Definition:** The *power set* of $$A$$ is the collection of all its subsets:
> $$
> \mathcal{P}(A) := \{x \mid x \subseteq A\}
> $$

---

<h4 id="def-union-intersection">Unions, Intersections, and Differences</h4>

> **Definition:** For sets $$A$$ and $$B$$:
> * **Difference:** $$A \setminus B := \{a \in A \mid a \notin B\}$$
> * **Complement:** Relative to a designated universe $$X$$, $$A^c := X \setminus A$$.
> * **Binary Union:** $$A \cup B := \{x \mid x \in A \lor x \in B\}$$
> * **General Union:** $$\bigcup A := \{x \mid \exists y \in A \ x \in y\}$$
> * **Binary Intersection:** $$A \cap B := \{x \mid x \in A \land x \in B\}$$
> * **General Intersection:** For $$A \ne \emptyset$$, $$\bigcap A := \{x \mid \forall y \in A \ x \in y\}$$

---

### Relations & Functions

<h4 id="def-relation">Relations</h4>

> **Definition:** A set representation of an $$n$$-ary relation is a subset $$R \subseteq A_1 \times \dots \times A_n$$. A *binary relation* is any subset $$R \subseteq A \times B$$.

---

<h4 id="def-domain-range">Domain & Range</h4>

> **Definition:** For a relation $$R \subseteq A_1 \times \dots \times A_n \times B$$:
> $$
> \operatorname{dom} R := \{a \mid \exists b \in B \ (a, b) \in R\}, \qquad \operatorname{ran} R := \{b \mid \exists a \ (a, b) \in R\}
> $$

---

<h4 id="def-functional-relation">Functional Relation</h4>

> **Definition:** A binary relation $$R \subseteq A \times B$$ is *functional* if:
> $$
> \forall a \in A \ \forall b_1, b_2 \in B \ (((a, b_1) \in R \land (a, b_2) \in R) \rightarrow b_1 = b_2)
> $$

---

<h4 id="def-function">Function</h4>

> **Definition:** A (set representation of a) *function* $$f \colon A \longrightarrow B$$ is a functional relation $$f \subseteq A \times B$$ such that:
> $$
> \operatorname{dom} f = A
> $$
> For $$x \in A$$, $$f(x) := y$$ where $$y$$ is the unique element such that $$(x, y) \in f$$.

---

<h4 id="def-composition">Composition</h4>

> **Definition:** 
> * For relations $$R \subseteq A \times B$$ and $$S \subseteq B \times C$$, relational composition is:
>   $$
>   RS := \{(a, c) \in A \times C \mid \exists b \ ((a, b) \in R \land (b, c) \in S)\}
>   $$
> * For functions $$f \colon A \longrightarrow B$$ and $$g \colon B \longrightarrow C$$, function composition $$g \circ f \colon A \longrightarrow C$$ is:
>   $$
>   g \circ f := \{(a, c) \in A \times C \mid \exists b \ (f(a) = b \land g(b) = c)\}
>   $$

---

<h4 id="def-diagonal-relation">Identity Function & Diagonal Relation</h4>

> **Definition:** The *diagonal relation* on a set $$X$$ is defined as:
> $$
> \Delta_X := \{(x, x) \mid x \in X\}
> $$
> When viewed as a function, it is denoted $$\operatorname{id}_X$$ and called the *identity function* on $$X$$. Given $$R \subseteq A \times B$$, its *converse* (or transpose) is $$R^T := \{(b, a) \in B \times A \mid (a, b) \in R\}$$.

---

<h4 id="def-inclusion">Inclusion</h4>

> **Definition:** A function $$\iota \colon A \longrightarrow B$$ satisfying $$\forall a \in A \ \iota(a) = a$$ is called an *inclusion* from $$A$$ to $$B$$.

---

<h4 id="def-injection">Injection</h4>

> **Definition:** A function $$f \colon A \longrightarrow B$$ is an *injection* (adj: *injective*) if:
> $$
> \forall x, y \in A \ (f(x) = f(y) \rightarrow x = y)
> $$

---

<h4 id="def-surjection">Surjection</h4>

> **Definition:** A function $$f \colon A \longrightarrow B$$ is a *surjection* (adj: *surjective*) if:
> $$
> \forall y \in B \ \exists x \in A \ f(x) = y
> $$

---

<h4 id="def-bijection">Bijection & Invertibility</h4>

> **Definition:** A function $$f \colon A \longrightarrow B$$ is a *bijection* (adj: *bijective*) if it is both injective and surjective.
> 
> A function $$g \colon B \longrightarrow A$$ is an *inverse* of $$f \colon A \longrightarrow B$$ if $$f \circ g = \operatorname{id}_B$$ and $$g \circ f = \operatorname{id}_A$$. A function is invertible if and only if it is bijective.

---

<h4 id="def-image-preimage">Image & Preimage</h4>

> **Definition:** For a function $$f \colon A \longrightarrow B$$:
> * **Image:** For $$X \subseteq A$$, $$f(X) := \{b \in B \mid \exists x \in X \ f(x) = b\}$$.
> * **Preimage:** For $$Y \subseteq B$$, $$f^{-1}(Y) := \{a \in A \mid f(a) \in Y\}$$.

---

<h4 id="def-restriction">Restriction</h4>

> **Definition:** For a function $$f \colon A \longrightarrow B$$ and $$S \subseteq A$$, the *restriction* of $$f$$ to $$S$$ is:
> $$
> f \vert_S := f \cap (S \times B)
> $$
> For an $$n$$-ary relation $$R \subseteq A^n$$ and $$B \subseteq A$$, we define $$R \vert_B := R \cap B^n$$.

---

<h4 id="def-function-set">Function Sets Bᴬ</h4>

> **Definition:** For sets $$A$$ and $$B$$, the set of all functions from $$A$$ to $$B$$ is denoted:
> $$
> B^A := \{f \colon A \longrightarrow B\}
> $$

---

<h4 id="def-natural-integers">Informal Number Sets</h4>

> **Definition:** The set of natural numbers is informally defined as $$\mathbb{N} := \{0, 1, 2, \dots\}$$. The set of integers is informally defined as $$\mathbb{Z} := \{0, 1, -1, 2, -2, \dots\}$$.

---

### Equivalence Relations & Quotients

<h4 id="def-relation-properties">Relational Properties</h4>

> **Definition:** A binary relation $$R \subseteq A \times A$$ is said to be:
> * **Reflexive:** $$\forall x \in A \ (x, x) \in R$$
> * **Symmetric:** $$\forall x, y \in A \ ((x, y) \in R \rightarrow (y, x) \in R)$$
> * **Transitive:** $$\forall x, y, z \in A \ (((x, y) \in R \land (y, z) \in R) \rightarrow (x, z) \in R)$$
> * **Antisymmetric:** $$\forall x, y \in A \ (((x, y) \in R \land (y, x) \in R) \rightarrow x = y)$$
> * **Strongly Connected (Total):** $$\forall x, y \in A \ ((x, y) \in R \lor (y, x) \in R)$$

---

<h4 id="def-equivalence-relation">Equivalence Relation</h4>

> **Definition:** A binary relation is an *equivalence relation* if it is reflexive, symmetric, and transitive.

---

<h4 id="def-equivalence-class">Equivalence Class</h4>

> **Definition:** Given an equivalence relation $$\sim$$, the *equivalence class* of $$x$$ under $$\sim$$ is:
> $$
> [x]_\sim := \{y \mid x \sim y\}
> $$

---

<h4 id="def-quotient-set">Quotient Set</h4>

> **Definition:** Given an equivalence relation $$\sim \subseteq X \times X$$, the *quotient set* of $$X$$ by $$\sim$$ is:
> $$
> \quot{X}{\sim} := \{[x]_\sim \mid x \in X\}
> $$

---

<h4 id="def-partition">Partition</h4>

> **Definition:** A *partition* of a set $$X$$ is a set of sets $$Y$$ such that $$\bigcup Y = X$$, $$\emptyset \notin Y$$, and:
> $$
> \forall y_1, y_2 \in Y \ (y_1 \ne y_2 \rightarrow y_1 \cap y_2 = \emptyset)
> $$

---

### Order Theory

<h4 id="def-strict-weak-relations">Strict & Weak Relations</h4>

> **Definition:** For a binary relation $$R \subseteq A \times A$$:
> * **Strict relation:** $$R \setminus \Delta_A$$
> * **Weak relation:** $$R \cup \Delta_A$$

---

<h4 id="def-poset">Poset & Total Order</h4>

> **Definition:** A *partially ordered set* (or *poset*) is a pair $$(X, \le)$$ where $$\le \subseteq X \times X$$ is reflexive, antisymmetric, and transitive. We denote the corresponding strict relation by $$<$$.
> 
> A partial order is a *total order* (or *linear order*) if $$\le$$ is strongly connected.

---

<h4 id="def-initial-segment">Initial Segment</h4>

> **Definition:** In a poset $$(X, \le)$$, for any $$a \in X$$, the proper *initial segment* determined by $$a$$ is:
> $$
> X_a := \{x \in X \mid x < a\}
> $$
> We also define $$(X, \le)_a := (X_a, \le \vert_{X_a})$$.

---

<h4 id="def-bounds-min-max">Bounds, Extremal Elements, and Min/Max</h4>

> **Definition:** Let $$(X, \le)$$ be a poset and $$S \subseteq X$$. An element $$x \in X$$ is:
> * **Greatest element:** $$\forall y \in X \ y \le x$$
> * **Least element:** $$\forall y \in X \ x \le y$$
> * **Maximal element:** $$\forall y \in X \ (x \le y \rightarrow x = y)$$
> * **Minimal element:** $$\forall y \in X \ (y \le x \rightarrow x = y)$$
> * **Upper bound of $$S$$:** $$\forall y \in S \ y \le x$$
> * **Lower bound of $$S$$:** $$\forall y \in S \ x \le y$$
> * **Supremum ($$\sup S$$):** Least upper bound of $$S$$
> * **Infimum ($$\inf S$$):** Greatest lower bound of $$S$$
> * **$$\min_\le S$$ / $$\max_\le S$$:** The least (respectively greatest) element belonging to $$S$$, if it exists.

---

<h4 id="def-chain">Chain</h4>

> **Definition:** A subset $$\mathcal{C} \subseteq X$$ in a poset $$(X, \le)$$ is a *chain* if:
> $$
> \forall x, y \in \mathcal{C} \ (x < y \lor x = y \lor x > y)
> $$
> The set of all chains of $$X$$ is denoted $$\operatorname{Chains}(X)$$.

---

<h4 id="def-well-ordering">Well-Ordering (Woset)</h4>

> **Definition:** A partial order $$\le$$ on $$X$$ is a *well-ordering* if every non-empty subset of $$X$$ contains a least element. The pair $$(X, \le)$$ is called a *well-ordered set* (or *woset*).

---

<h4 id="def-successor-element">Successor Element</h4>

> **Definition:** Let $$(X, \le)$$ be a well-ordered set. If the set $$\{y \in X \mid x < y\}$$ is non-empty, we define the *successor* $$\Succ_\le x$$ to be its least element.

---

<h4 id="def-well-founded">Well-Founded Relation</h4>

> **Definition:** A binary relation $$R \subseteq A \times A$$ is *well-founded* if every non-empty subset of $$A$$ has a minimal element with respect to $$R$$.

---

<h4 id="def-order-boundedness">Order Boundedness, Cofinality, and Density</h4>

> **Definition:** Let $$(X, \le)$$ be a partially ordered set and $$A \subseteq X$$. $$A$$ is:
> * **Bounded below:** if $$\exists x \in X \ \forall a \in A \ x \le a$$
> * **Bounded above:** if $$\exists x \in X \ \forall a \in A \ a \le x$$
> * **Bounded:** if it is bounded below and above in $$X$$
> * **Unbounded:** if it is not bounded in $$X$$
> * **Cofinal:** if $$\forall x \in X \ \exists a \in A \ x \le a$$
> * **Dense:** if $$\forall x < y \in X \ \exists a \in A \ x < a < y$$

---

### Lattice Theory & Fixed Points

<h4 id="def-lattice">Lattice</h4>

> **Definition:** A *lattice* is a triple $$(L, \land, \lor)$$ satisfying for all $$x, y, z \in L$$:
> 1. **Commutativity:** $$x \land y = y \land x$$ and $$x \lor y = y \lor x$$
> 2. **Associativity:** $$(x \land y) \land z = x \land (y \land z)$$ and $$(x \lor y) \lor z = x \lor (y \lor z)$$
> 3. **Absorption:** $$x \land (x \lor y) = x$$ and $$x \lor (x \land y) = x$$
> 
> The natural partial order is defined by $$x \le y \iff x \land y = x$$, under which $$x \land y = \inf\{x, y\}$$ and $$x \lor y = \sup\{x, y\}$$.

---

<h4 id="def-complete-lattice">Complete Lattice</h4>

> **Definition:** A lattice $$L$$ is *complete* if every subset $$S \subseteq L$$ has a supremum $$\sup S$$ and an infimum $$\inf S$$ in $$L$$.

---

<h4 id="def-monotone-function">Monotone Function</h4>

> **Definition:** For a lattice $$L$$, a function $$f \colon L \longrightarrow L$$ is *monotone* if:
> $$
> \forall x, y \in L \ (x \le y \rightarrow f(x) \le f(y))
> $$

---

<h4 id="def-fixed-point">Fixed Point & Least Fixed Point (μf)</h4>

> **Definition:** An element $$x \in L$$ is a *fixed point* of $$f \colon L \longrightarrow L$$ if $$f(x) = x$$.
> 
> The least fixed point is denoted $$\mu f$$, and the greatest fixed point is denoted $$\nu f$$.

---

### Formal Languages

<h4 id="def-alphabet">Alphabet</h4>

> **Definition:** An *alphabet* $$\Sigma$$ is a set of symbols, called letters.

---

<h4 id="def-strings">Strings (Σ*)</h4>

> **Definition:** The set of *strings* over $$\Sigma$$, denoted $$\Sigma^*$$, is the smallest set satisfying:
> 1. The empty string, $$\varepsilon$$, is in $$\Sigma^*$$.
> 2. If $$\sigma \in \Sigma^*$$ and $$s \in \Sigma$$, the string $$\sigma s$$ is in $$\Sigma^*$$.

---

<h4 id="def-concatenation">Concatenation</h4>

> **Definition:** Given strings $$\sigma, \tau \in \Sigma^*$$, their *concatenation* $$\sigma \tau$$ is defined recursively by:
> 1. If $$\tau = \varepsilon$$, then $$\sigma \tau := \sigma$$.
> 2. If $$\tau = \tau' t$$ for some $$t \in \Sigma$$, then $$\sigma \tau := (\sigma \tau')t$$.

---

<h4 id="def-language">Language</h4>

> **Definition:** A *language* $$\mathscr{L}$$ over $$\Sigma$$ is any subset of $$\Sigma^*$$.

---

<h4 id="def-string-initial-segment">Initial Segment of a String</h4>

> **Definition:** Let $$\sigma, \pi \in \Sigma^*$$. We say $$\sigma$$ is an *initial segment* of $$\pi$$ if there exists a string $$\tau \in \Sigma^*$$ such that $$\pi = \sigma \tau$$.

---

### Propositional Calculus: Syntax

<h4 id="def-pc-syntax">Variables, Connectives, and Formulae (Frm)</h4>

> **Definition:** Let $$\mathbf{Var} := \{p_1, p_2, \dots\}$$ be propositional variables, and $$\mathbf{Con} := \{c_1^0, \dots, c_1^1, \dots\}$$ be logical connectives with superscripts denoting arity. The set of propositional formulae $$\textbf{Frm}$$ is the smallest set satisfying:
> 1. All variables in $$\mathbf{Var}$$ are in $$\textbf{Frm}$$.
> 2. If $$\varphi_1, \dots, \varphi_n \in \textbf{Frm}$$ and $$c_k^n$$ is an $$n$$-ary connective, then the string $$c_k^n(\varphi_1, \dots, \varphi_n)$$ is in $$\textbf{Frm}$$.

---

<h4 id="def-pc-complexity">Formula Complexity</h4>

> **Definition:** The *complexity* of a propositional formula is defined recursively by:
> 1. $$\operatorname{comp}(p) = 0$$ for any variable $$p \in \mathbf{Var}$$ and 0-ary connective $$c_n^0$$.
> 2. $$\operatorname{comp}(c_k^n(\varphi_1, \dots, \varphi_n)) = \max\{\operatorname{comp}(\varphi_1), \dots, \operatorname{comp}(\varphi_n)\} + 1$$.

---

### Propositional Calculus: Semantics

<h4 id="def-pc-valuation">Valuation & Extended Interpretation</h4>

> **Definition:** An *interpretation* (or *valuation*) is a function $$\mathcal{I} \colon \mathbf{Var} \longrightarrow \{\False, \True\}$$. 
> 
> The standard extended interpretation $$\hat{\mathcal{I}} \colon \textbf{Frm} \longrightarrow \{\False, \True\}$$ agrees with $$\mathcal{I}$$ on variables and evaluates connectives via classical truth tables.

---

<h4 id="def-pc-equivalence">Logical Equivalence</h4>

> **Definition:** Two formulae $$\varphi$$ and $$\psi$$ are *equivalent*, written $$\varphi \equiv \psi$$, if $$\mathcal{I}(\varphi) = \mathcal{I}(\psi)$$ for all valuations $$\mathcal{I}$$.

---

<h4 id="def-pc-tautology-contradiction">Tautology & Contradiction</h4>

> **Definition:** 
> * A formula $$\varphi$$ is a *tautology* if $$\varphi \equiv \top$$.
> * A formula $$\varphi$$ is a *contradiction* if $$\varphi \equiv \bot$$.

---

<h4 id="def-pc-satisfiability-formula">Formula Satisfiability (PC)</h4>

> **Definition:** A propositional formula $$\varphi$$ is *satisfiable* if there exists some valuation $$\mathcal{I}$$ such that:
> $$
> \mathcal{I}(\varphi) = \True
> $$

---

<h4 id="def-pc-satisfiability-set">Set Satisfiability (PC)</h4>

> **Definition:** An interpretation $$\mathcal{I}$$ *satisfies* a set of formulae $$\Sigma$$ if it satisfies every formula in $$\Sigma$$.
> 
> A set of formulae $$\Sigma$$ is *satisfiable* if there exists some interpretation $$\mathcal{I}$$ such that:
> $$
> \mathcal{I}(\varphi) = \True \quad \text{for all } \varphi \in \Sigma
> $$

---

<h4 id="def-pc-entailment">Entailment (PC)</h4>

> **Definition:** A set of formulae $$\Sigma$$ *entails* $$\varphi$$, written $$\Sigma \models \varphi$$, if every interpretation that satisfies $$\Sigma$$ also satisfies $$\varphi$$. We write $$\phi \models \psi$$ for $$\{\phi\} \models \psi$$, and $$\models \phi$$ for $$\emptyset \models \phi$$.

---

<h4 id="def-pc-functional-completeness">Functional Completeness</h4>

> **Definition:** A set of logical connectives $$\mathscr{C}$$ is *functionally complete* if every possible formula is semantically equivalent to some formula containing only connectives from $$\mathscr{C}$$.

---

### Proof Theory

<h4 id="def-proof-system">Proof System</h4>

> **Definition:** A *proof system* is a triple $$(\mathscr{L}, \mathscr{R}, \mathscr{A})$$, where $$\mathscr{L}$$ is a formal language, $$\mathscr{R}$$ is a set of rules of inference, and $$\mathscr{A}$$ is a set of axioms.

---

<h4 id="def-formal-proof">Formal Proof</h4>

> **Definition:** A *proof* in a proof system $$(\mathscr{L}, \mathscr{R}, \mathscr{A})$$ is a finite sequence of formulae in $$\mathscr{L}$$, where each formula is either an axiom, an assumption, or follows from preceding formulae via an inference rule.

---

<h4 id="def-provability">Syntactic Provability (⊢) & Theorems</h4>

> **Definition:** We write $$\Sigma \vdash \phi$$, read as *"$$\Sigma$$ proves $$\phi$$"*, if there exists a formal proof of $$\phi$$ where all active assumptions belong to $$\Sigma$$. A formula $$\varphi$$ is a *theorem* of a proof system if $$\emptyset \vdash \varphi$$, written simply as $$\vdash \varphi$$.

---

<h4 id="def-modus-ponens">Modus Ponens</h4>

> **Definition:** *Modus Ponens* is the rule of inference: from $$\phi$$ and $$\phi \rightarrow \psi$$, we may infer $$\psi$$.

---

<h4 id="def-tautology-system">Tautology System</h4>

> **Definition:** The *tautology system* is a propositional proof system where $$\mathscr{R}$$ contains only Modus Ponens, and $$\mathscr{A}$$ consists of all semantic tautologies.

---

<h4 id="def-hilbert-system">Hilbert System</h4>

> **Definition:** The *Hilbert system* is a proof system where $$\mathscr{R}$$ consists solely of Modus Ponens, and the axioms $$\mathscr{A}$$ are all formulae of the forms:
> * **A1:** $$\phi \rightarrow (\psi \rightarrow \phi)$$
> * **A2:** $$(\phi \rightarrow (\psi \rightarrow \chi)) \rightarrow ((\phi \rightarrow \psi) \rightarrow (\phi \rightarrow \chi))$$
> * **A3:** $$(\neg \phi \rightarrow \neg \psi) \rightarrow (\psi \rightarrow \phi)$$

---

<h4 id="def-consistency">Consistency & Inconsistency</h4>

> **Definition:** A set of formulae $$\Gamma$$ is *inconsistent* if $$\Gamma \vdash \bot$$. A set of formulae $$\Gamma$$ is *consistent* if it is not inconsistent.

---

<h4 id="def-system-soundness-completeness">Soundness & Completeness of a Proof System</h4>

> **Definition:** A proof system is:
> * **Sound:** if $$\Sigma \vdash \phi \implies \Sigma \models \phi$$
> * **Complete:** if $$\Sigma \models \phi \implies \Sigma \vdash \phi$$

---

<h4 id="def-proof-tree">Proof Trees & Discharging</h4>

> **Definition:** The set of *proof trees* over $$\mathscr{L}$$ is the smallest set where:
> 1. A single node $$\phi$$ is a proof tree (with open assumption $$\phi$$).
> 2. If $$\Pi_1, \dots, \Pi_k$$ are proof trees with conclusions $$\phi_1, \dots, \phi_k$$ and $$\frac{\phi_1 \dots \phi_k}{\psi} \in \mathscr{R}$$, placing $$\psi$$ as a root below them yields a proof tree.
> 
> Applying an inference rule that *discharges* open assumptions encloses those leaves in brackets with a numerical index, written $$[\phi]^n$$, marking them as closed.

---

<h4 id="def-nd-derivation">Natural Deduction Derivation</h4>

> **Definition:** We say $$\Sigma$$ proves $$\phi$$ in Natural Deduction, written $$\Sigma \vdash \phi$$, if there exists a finite proof tree with root $$\phi$$ such that every undischarged (open) assumption belongs to $$\Sigma$$.

---

### First-Order Logic: Syntax

<h4 id="def-fol-signature">Signature (σ)</h4>

> **Definition:** A *signature* $$\sigma$$ is a quadruple $$(\mathbf{F}, \mathbf{R}, \mathbf{C}, \operatorname{ar})$$, where $$\mathbf{F}$$ (function symbols), $$\mathbf{R}$$ (relation symbols), and $$\mathbf{C}$$ (constant symbols) are pairwise disjoint sets such that no element is an initial segment of another. The function $$\operatorname{ar}$$ assigns an arity in $$\mathbb{N}$$ to every element of $$\mathbf{F} \cup \mathbf{R}$$.

---

<h4 id="def-fol-alphabet">First-Order Alphabet</h4>

> **Definition:** The alphabet of First-Order Logic over signature $$\sigma$$ consists of:
> * **Logical symbols:** Connectives ($$\neg, \land, \lor, \rightarrow, \leftrightarrow$$) and quantifiers ($$\forall, \exists$$).
> * **Variables:** $$x_0, x_1, x_2, \dots$$
> * **Non-logical symbols:** Elements of $$\mathbf{F}$$, $$\mathbf{R}$$, and $$\mathbf{C}$$.

---

<h4 id="def-fol-terms">Terms (Trm)</h4>

> **Definition:** The set of *terms* $$\textbf{Trm}(\sigma)$$ over $$\sigma$$ is the smallest set satisfying:
> 1. All constant symbols and variables are in $$\textbf{Trm}(\sigma)$$.
> 2. If $$t_1, \dots, t_n \in \textbf{Trm}(\sigma)$$ and $$f \in \mathbf{F}$$ has arity $$n$$, the string $$f t_1 \dots t_n$$ is in $$\textbf{Trm}(\sigma)$$.
> 
> The set of variables used in a term $$t$$ is denoted $$\mathbf{Var}(t)$$.

---

<h4 id="def-fol-formulae">Atomic & Compound Formulae (Frm)</h4>

> **Definition:** 
> * **Atomic formulae ($$\textbf{AtFrm}(\sigma)$$):** The smallest set containing $$R t_1 \dots t_n$$ (for $$R \in \mathbf{R}$$ of arity $$n$$) and $$= t_1 t_2$$ for terms $$t_i \in \textbf{Trm}(\sigma)$$.
> * **Formulae ($$\textbf{Frm}(\sigma)$$):** The smallest set containing $$\textbf{AtFrm}(\sigma)$$ and closed under $$\neg \varphi$$, $$\land \varphi \psi$$, $$\lor \varphi \psi$$, $$\rightarrow \varphi \psi$$, $$\leftrightarrow \varphi \psi$$, $$\forall x \varphi$$, and $$\exists x \varphi$$.

---

<h4 id="def-fol-weight">Symbol Weight & Unique Readability</h4>

> **Definition:** The weight assignment $$w$$ assigns:
> * $$w(f) := \operatorname{ar}(f) - 1$$ for $$f \in \mathbf{F}$$
> * $$w(R) := \operatorname{ar}(R) - 1$$ for $$R \in \mathbf{R}$$
> * $$w(c) := -1$$ for $$c \in \mathbf{C}$$ and $$w(x_i) := -1$$ for variables
> * $$w(=) := 1$$
> * $$w(\neg) := 0$$, and $$w(\ast) := 1$$ for binary connectives and quantifiers.
> 
> The cumulative weight of a string is defined by $$\hat{w}(\varepsilon) := 0$$ and $$\hat{w}(\sigma s) := \hat{w}(\sigma) + w(s)$$. Prefix strings are uniquely readable because $$\hat{w}(t) = -1$$ for every term or formula, while $$\hat{w}(\sigma) \ge 0$$ for every proper initial segment.

---

<h4 id="def-fol-free-variables">Free Variables (FV)</h4>

> **Definition:** The set of *free variables* $$\mathbf{FV}(\varphi)$$ of a formula $$\varphi$$ is defined recursively by:
> * $$\mathbf{FV}(R t_1 \dots t_n) := \bigcup_{k=1}^n \mathbf{Var}(t_k)$$
> * $$\mathbf{FV}(= t_1 t_2) := \mathbf{Var}(t_1) \cup \mathbf{Var}(t_2)$$
> * $$\mathbf{FV}(\neg \varphi) := \mathbf{FV}(\varphi)$$
> * $$\mathbf{FV}(\ast \varphi \psi) := \mathbf{FV}(\varphi) \cup \mathbf{FV}(\psi)$$ for binary connectives $$\ast$$
> * $$\mathbf{FV}(\ast x \ \varphi) := \mathbf{FV}(\varphi) \setminus \{x\}$$ for quantifiers $$\ast \in \{\forall, \exists\}$$

---

<h4 id="def-fol-abbreviations">Precedence & Abbreviations</h4>

> **Definition:** Standard abbreviations:
> * $$\forall \bar{x} \varphi$$ and $$\exists \bar{x} \varphi$$ abbreviate iterated quantifiers.
> * $$\forall R(\bar{x}) \ \varphi := \forall \bar{x} (R(\bar{x}) \rightarrow \varphi)$$ and $$\exists R(\bar{x}) \ \varphi := \exists \bar{x} (R(\bar{x}) \land \varphi)$$.
> * $$\exists! x \ \varphi(x) := \exists x (\varphi(x) \land \forall y (\varphi(y) \rightarrow x = y))$$.
> * **Operator Precedence:** $$\neg > \land, \lor > \forall, \exists > \rightarrow, \iff$$, with binary connectives right-associative.

---

<h4 id="def-fol-functional-formula">Functional Formula</h4>

> **Definition:** A formula $$\varphi(\bar{x}, y)$$ is *functional* in $$y$$ if:
> $$
> \forall \bar{x} \exists! y \ \varphi(\bar{x}, y)
> $$

---

### First-Order Logic: Semantics

<h4 id="def-fol-structure">Structure (𝔄)</h4>

> **Definition:** A *structure* $$\mathfrak{A}$$ over signature $$\sigma = (\mathbf{F}, \mathbf{R}, \mathbf{C}, \operatorname{ar})$$ is a pair $$(A, \cdot^\mathfrak{A})$$, where $$A \ne \emptyset$$ is a set called the *universe* (denoted $$\vert \mathfrak{A} \vert$$), and $$\cdot^\mathfrak{A}$$ maps:
> * Each $$f \in \mathbf{F}$$ of arity $$n$$ to a function $$f^\mathfrak{A} \colon A^n \longrightarrow A$$.
> * Each $$R \in \mathbf{R}$$ of arity $$n$$ to a relation $$R^\mathfrak{A} \subseteq A^n$$.
> * Each $$c \in \mathbf{C}$$ to an element $$c^\mathfrak{A} \in A$$.

---

<h4 id="def-fol-assignment">Variable Assignment</h4>

> **Definition:** A *variable assignment* in structure $$\mathfrak{A}$$ is a function $$s \colon \mathbf{Var} \longrightarrow \vert \mathfrak{A} \vert$$.

---

<h4 id="def-fol-valuation-function">Term Valuation Function (s̄)</h4>

> **Definition:** The *valuation function* $$\bar{s} \colon \textbf{Trm}(\sigma) \longrightarrow \vert \mathfrak{A} \vert$$ corresponding to assignment $$s$$ is defined recursively by:
> 1. $$\bar{s}(x_i) := s(x_i)$$
> 2. $$\bar{s}(c) := c^\mathfrak{A}$$
> 3. $$\bar{s}(f t_1 \dots t_n) := f^\mathfrak{A}(\bar{s}(t_1), \dots, \bar{s}(t_n))$$

---

<h4 id="def-fol-modified-assignment">Modified Assignment</h4>

> **Definition:** The modified assignment $$s_{x \mapsto t}$$ is defined by:
> $$
> s_{x \mapsto t}(y) := \begin{cases} s(y) & \text{if } y \ne x, \\ t & \text{if } y = x. \end{cases}
> $$

---

<h4 id="def-fol-satisfaction">Satisfaction Relation (⊨)</h4>

> **Definition:** The *satisfaction* relation $$\mathfrak{A} \models \varphi[s]$$ is defined recursively by:
> 1. $$\mathfrak{A} \models R t_1 \dots t_n[s] \iff (\bar{s}(t_1), \dots, \bar{s}(t_n)) \in R^\mathfrak{A}$$
> 2. $$\mathfrak{A} \models {= t_1 t_2}[s] \iff \bar{s}(t_1) = \bar{s}(t_2)$$
> 3. $$\mathfrak{A} \models \neg \psi[s] \iff \mathfrak{A} \not\models \psi[s]$$
> 4. $$\mathfrak{A} \models \land \psi \xi[s] \iff \mathfrak{A} \models \psi[s] \land \mathfrak{A} \models \xi[s]$$
> 5. $$\mathfrak{A} \models \lor \psi \xi[s] \iff \mathfrak{A} \models \psi[s] \lor \mathfrak{A} \models \xi[s]$$
> 6. $$\mathfrak{A} \models \rightarrow \psi \xi[s] \iff \mathfrak{A} \not\models \psi[s] \lor \mathfrak{A} \models \xi[s]$$
> 7. $$\mathfrak{A} \models \leftrightarrow \psi \xi[s] \iff (\mathfrak{A} \models \psi[s] \iff \mathfrak{A} \models \xi[s])$$
> 8. $$\mathfrak{A} \models \forall x \psi[s] \iff \forall t \in \vert \mathfrak{A} \vert \ \mathfrak{A} \models \psi[s_{x \mapsto t}]$$
> 9. $$\mathfrak{A} \models \exists x \psi[s] \iff \exists t \in \vert \mathfrak{A} \vert \ \mathfrak{A} \models \psi[s_{x \mapsto t}]$$

---

<h4 id="def-sentence">Sentence</h4>

> **Definition:** A first-order formula $$\varphi$$ is a *sentence* (or closed formula) if it contains no free variables:
> $$
> \mathbf{FV}(\varphi) = \emptyset
> $$

---

<h4 id="def-truth-structure">Truth in a Structure</h4>

> **Definition:** For a structure $$\mathfrak{A}$$ and formula $$\varphi$$, we define $$\mathfrak{A} \models \varphi$$ to mean:
> $$
> \mathfrak{A} \models \varphi[s] \quad \text{for every assignment } s
> $$
> For sentences, this holds if and only if it holds for some assignment.

---

<h4 id="def-fol-validity">First-Order Validity & Satisfiability</h4>

> **Definition:** A first-order formula $$\varphi$$ is:
> * **Satisfiable:** if $$\mathfrak{A} \models \varphi[s]$$ for some structure $$\mathfrak{A}$$ and assignment $$s$$.
> * **Unsatisfiable (Contradiction):** if it is not satisfiable.
> * **Valid (Tautology):** written $$\models \varphi$$, if $$\mathfrak{A} \models \varphi$$ for every structure $$\mathfrak{A}$$.
> * **Invalid:** written $$\not\models \varphi$$, if $$\mathfrak{A} \not\models \varphi$$ for some structure $$\mathfrak{A}$$.

---

<h4 id="def-model-theory">Model of a Set of Formulae</h4>

> **Definition:** A structure $$\mathfrak{A}$$ is a *model* of a set of formulae $$\Gamma$$, written $$\mathfrak{A} \models \Gamma$$, if:
> $$
> \mathfrak{A} \models \varphi \quad \text{for every } \varphi \in \Gamma
> $$

---

<h4 id="def-fol-entailment">First-Order Entailment</h4>

> **Definition:** We say $$\Sigma \models \varphi$$ if for every structure $$\mathfrak{A}$$ and assignment $$s$$, if $$\mathfrak{A} \models \psi[s]$$ for all $$\psi \in \Sigma$$, then $$\mathfrak{A} \models \varphi[s]$$.

---

<h4 id="def-fol-set-satisfiability">Set Satisfiability (FOL)</h4>

> **Definition:** A set of formulae $$\Sigma$$ is:
> * **Satisfiable:** if $$\mathfrak{A} \models \Sigma$$ for some structure $$\mathfrak{A}$$.
> * **Unsatisfiable:** if it is not satisfiable.

---

### Metatheory of Classical Logic

<h4 id="def-finitely-satisfiable">Finite Satisfiability</h4>

> **Definition:** A set of formulae $$\Sigma$$ is *finitely satisfiable* if every finite subset $$\Sigma_0 \subseteq \Sigma$$ is satisfiable.

---

<h4 id="def-henkin-property">Henkin Witness Property</h4>

> **Definition:** A theory $$T$$ has the *Henkin property* (or witness property) if whenever $$T \vdash \exists x \ \varphi(x)$$, then $$T \vdash \varphi(c)$$ for some constant symbol $$c$$.

---

<h4 id="def-maximally-consistent">Maximal Consistency</h4>

> **Definition:** A set of formulae $$\Gamma$$ is *maximally consistent* if it is consistent and for every formula $$\phi$$, either $$\phi \in \Gamma$$ or $$\neg \phi \in \Gamma$$.

---

<h4 id="def-term-verifier">Canonical Term Structure (Γ-Verifier)</h4>

> **Definition:** Let $$\Delta$$ be a complete consistent Henkin theory. The *canonical term structure* $$\mathfrak{A}$$ has universe $$\vert \mathfrak{A} \vert := \textbf{Trm}(\mathscr{L} \cup \{c_n\})$$ defined by:
> 1. $$R^\mathfrak{A}(t_1, \dots, t_n) \iff R t_1 \dots t_n \in \Delta$$
> 2. $$f^\mathfrak{A}(t_1, \dots, t_n) := f t_1 \dots t_n$$
> 3. $$E^\mathfrak{A}(t_1, t_2) \iff = t_1 t_2 \in \Delta$$

---

<h4 id="def-quotient-model">Quotient Model (Γ-Model)</h4>

> **Definition:** The *quotient structure* $$\mathfrak{A}' := \mathfrak{A} / E^\mathfrak{A}$$ is defined by:
> 1. $$R^{\mathfrak{A}'}([t_1], \dots, [t_n]) \iff R^\mathfrak{A}(t_1, \dots, t_n)$$
> 2. $$f^{\mathfrak{A}'}([t_1], \dots, [t_n]) := [f^\mathfrak{A}(t_1, \dots, t_n)]$$

---

### Axiomatic Set Theory: Foundations & Classes

<h4 id="def-set-theory-language">Language of Set Theory</h4>

> **Definition:** The formal language of Set Theory contains a single binary relation symbol $$\in$$.

---

<h4 id="def-ordered-pair-kuratowski">Kuratowski Ordered Pair</h4>

> **Definition:** The *ordered pair* $$(a, b)$$ is formally defined set-theoretically as:
> $$
> (a, b) := \{\{a\}, \{a, b\}\}
> $$

---

<h4 id="def-successor-set">Successor Set</h4>

> **Definition:** The *successor* of a set $$n$$ is defined as:
> $$
> n + 1 := n \cup \{n\}
> $$

---

<h4 id="def-z-minus-zf-minus">Z⁻ and ZF⁻</h4>

> **Definition:** 
> * $$\mathrm{Z}^- := \{\mathbf{Ex, ES, Pa, U, PS, I}\}$$
> * $$\mathrm{ZF}^- := \mathrm{Z}^- \cup \mathbf{R}$$

---

<h4 id="def-omega-natural-numbers">Natural Numbers (ω, ℕ)</h4>

> **Definition:** Let $$\mathcal{I}$$ be an inductive set. We define the set of natural numbers by:
> $$
> \omega := \bigcap \{x \in \mathcal{P}(\mathcal{I}) \mid x \text{ is inductive}\}, \qquad \mathbb{N} := \omega
> $$

---

<h4 id="def-transitive-set">Transitive Set</h4>

> **Definition:** A set $$X$$ is *transitive* if every element of $$X$$ is a subset of $$X$$:
> $$
> \forall x \in X \ x \subseteq X
> $$

---

<h4 id="def-class-proper-class">Classes & The Universe (V)</h4>

> **Definition:** For any formula $$\varphi(x, \bar{t})$$, the *class* of elements satisfying $$\varphi$$ is $$A = \{x \mid \varphi(x, \bar{t})\}$$. A class that is not a set is called a *proper class*. The class of all sets is:
> $$
> \mathbf{V} := \{x \mid x = x\}
> $$

---

### Axiomatic Set Theory: Ordinals & Choice

<h4 id="def-order-isomorphism">Order Isomorphism & Automorphism</h4>

> **Definition:** A function $$f \colon X \longrightarrow Y$$ between posets is an *order isomorphism* if $$f$$ is bijective and:
> $$
> \forall x, y \in X \ (x \le y \iff f(x) \le f(y))
> $$
> We write $$(X, \le) \cong_{\operatorname{Ord}} (Y, \hat{\le})$$. An order isomorphism from a poset to itself is an *order automorphism*.

---

<h4 id="def-initial-segment-embedding">Initial Segment Embedding (⊑)</h4>

> **Definition:** We write $$(X, \le) \sqsubseteq (Y, \hat{\le})$$ if $$(X, \le)$$ is order-isomorphic to an initial segment of $$(Y, \hat{\le})$$.

---

<h4 id="def-ordinal-number">Ordinal Number (Ord)</h4>

> **Definition:** A well-ordered set $$(X, \le)$$ is an *ordinal* if:
> $$
> \forall \alpha \in X \ X_\alpha = \alpha
> $$
> We define $$\mathbf{Ord} := \{\alpha \mid \alpha \text{ is an ordinal number}\}$$, and define $$\alpha < \beta \iff \alpha \in \beta$$.

---

<h4 id="def-ordinal-sup-inf">Ordinal Supremum & Infimum</h4>

> **Definition:** For a set of ordinals $$X$$, we define:
> $$
> \inf X := \bigcap X, \qquad \sup X := \bigcup X
> $$

---

<h4 id="def-successor-limit-ordinal">Successor & Limit Ordinals</h4>

> **Definition:** An ordinal $$\alpha > 0$$ is a *successor ordinal* if $$\exists \beta \ \alpha = \beta + 1$$. Otherwise, $$\alpha$$ is a *limit ordinal*.

---

<h4 id="def-transfinite-recursion">Transfinite Recursion</h4>

> **Definition:** For any class function $$G \colon \mathbf{V} \longrightarrow \mathbf{V}$$, there exists a unique class function $$F \colon \mathbf{Ord} \longrightarrow \mathbf{V}$$ such that:
> $$
> F(\alpha) = G(F \vert_\alpha) \quad \text{for every } \alpha \in \mathbf{Ord}
> $$

---

<h4 id="def-ordinal-sequence">Ordinal Sequences & Limits</h4>

> **Definition:** An $$\alpha$$-sequence is a function $$\xi \colon \alpha \longrightarrow X$$. An $$\alpha$$-sequence of ordinals *converges* to $$\eta$$, written $$\xi \rightarrow \eta$$, if:
> $$
> \forall \lambda < \eta \ \exists \beta \ \forall \gamma \ (\beta \le \gamma < \alpha \rightarrow \lambda < \xi_\gamma \le \eta)
> $$

---

<h4 id="def-axiom-choice">Axiom of Choice (AC) & ZFC⁻</h4>

> **Definition:** The *Axiom of Choice* ($$\mathbf{AC}$$) asserts that for any set of non-empty sets $$\mathcal{A}$$, there exists a choice function $$f \colon \mathcal{A} \longrightarrow \bigcup \mathcal{A}$$ such that:
> $$
> \forall A \in \mathcal{A} \ f(A) \in A
> $$
> We define $$\mathrm{ZFC}^- := \mathrm{ZF}^- \cup \{\mathbf{AC}\}$$.

---

### Cardinal Numbers

<h4 id="def-cardinality-of-set">Cardinality of a Set (|A|)</h4>

> **Definition:** For any set $$A$$, its *cardinality* $$\vert A \vert$$ is the smallest ordinal $$\alpha$$ such that there exists a bijection $$f \colon A \longrightarrow \alpha$$.

---

<h4 id="def-cardinal-number">Cardinal Number</h4>

> **Definition:** An ordinal number $$\kappa$$ is a *cardinal number* if:
> $$
> \kappa = \vert \kappa \vert
> $$

---

<h4 id="def-cardinal-ordering">Cardinal Ordering (≤)</h4>

> **Definition:** For two cardinal numbers $$\kappa, \lambda$$, we define $$\kappa \le \lambda$$ if there exists an injection $$f \colon \kappa \longrightarrow \lambda$$.

---

<h4 id="def-cardinal-arithmetic">Cardinal Arithmetic</h4>

> **Definition:** Let $$\vert A \vert = \kappa$$ and $$\vert B \vert = \lambda$$. We define:
> * $$\kappa + \lambda := \vert A \sqcup B \vert$$
> * $$\kappa \cdot \lambda := \vert A \times B \vert$$
> * $$\kappa^\lambda := \vert A^B \vert$$

---

### Theory of Computation

<h4 id="def-decidable-set">Decidable Set</h4>

> **Definition:** A set $$A \subseteq \mathbb{N}$$ is *decidable* (or computable) if there exists an algorithm that, on input $$n \in \mathbb{N}$$, returns **Yes** if $$n \in A$$, and **No** if $$n \notin A$$.

---

<h4 id="def-semidecidable-set">Semidecidable Set</h4>

> **Definition:** A set $$A \subseteq \mathbb{N}$$ is *semidecidable* (or recursively enumerable) if there exists an algorithm that, on input $$n \in \mathbb{N}$$, returns **Yes** if $$n \in A$$, and runs forever (or halts without output) if $$n \notin A$$.

---

<h4 id="def-enumerator">Enumerator</h4>

> **Definition:** An algorithm *enumerates* $$A$$ if it lists the elements of $$A$$ such that every element of $$A$$ is eventually listed in finite time, and no elements outside $$A$$ are ever listed.
