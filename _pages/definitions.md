---
layout: page
title: Definitions
permalink: /definitions/
description: A curated reference library of formal mathematical definitions.
nav: true
nav_order: 4
---

Welcome to the central dictionary of mathematical definitions. This archive establishes the formal notation and concepts used throughout the lecture notes, blog articles, and [Theorems & Proofs Library](/theorems/).

---

### Table of Contents
* **Informal Logic & Foundations:**
  * [Proposition](#def-proposition) &bull; [Argument](#def-argument) &bull; [Validity](#def-validity) &bull; [Soundness](#def-soundness)
* **Naive Set Theory:**
  * [Set & Membership](#def-set) &bull; [Subset & Equality](#def-subset) &bull; [Comprehension](#def-comprehension) &bull; [Empty Set](#def-empty-set) &bull; [Ordered Pair](#def-ordered-pair) &bull; [Cartesian Product](#def-cartesian-product) &bull; [Power Set](#def-power-set) &bull; [Union & Intersection](#def-union-intersection)
* **Relations & Functions:**
  * [Relations & Arity](#def-relation) &bull; [Domain & Range](#def-domain-range) &bull; [Functional Relation](#def-functional-relation) &bull; [Function](#def-function) &bull; [Composition](#def-composition) &bull; [Identity & Diagonal](#def-diagonal-relation) &bull; [Inclusion](#def-inclusion) &bull; [Injection](#def-injection) &bull; [Surjection](#def-surjection) &bull; [Bijection & Inverses](#def-bijection) &bull; [Image & Preimage](#def-image-preimage) &bull; [Restriction](#def-restriction) &bull; [Function Sets Bᴬ](#def-function-set)
* **Equivalence Relations & Quotients:**
  * [Relational Properties](#def-relation-properties) &bull; [Equivalence Relation](#def-equivalence-relation) &bull; [Equivalence Class](#def-equivalence-class) &bull; [Quotient Set](#def-quotient-set) &bull; [Partition](#def-partition)
* **Order Theory:**
  * [Strict & Weak Relations](#def-strict-weak-relations) &bull; [Poset & Total Order](#def-poset) &bull; [Initial Segment](#def-initial-segment) &bull; [Extremal Bounds & Min/Max](#def-bounds-min-max) &bull; [Chain](#def-chain) &bull; [Well-Ordering](#def-well-ordering) &bull; [Well-Founded Relation](#def-well-founded)
* **Lattice Theory & Fixed Points:**
  * [Lattice](#def-lattice) &bull; [Complete Lattice](#def-complete-lattice) &bull; [Monotone Function](#def-monotone-function) &bull; [Fixed Point & Least Fixed Point (μf)](#def-fixed-point)
* **Formal Languages:**
  * [Alphabet](#def-alphabet) &bull; [Strings (Σ*)](#def-strings) &bull; [Concatenation](#def-concatenation) &bull; [Language](#def-language)
* **Propositional Calculus:**
  * [Syntax & Formulae (Frm)](#def-propositional-syntax) &bull; [Formula Complexity](#def-formula-complexity) &bull; [Valuation & Truth](#def-valuation) &bull; [Equivalence & Tautology](#def-tautology) &bull; [Entailment (⊨)](#def-entailment) &bull; [Functional Completeness](#def-functional-completeness)

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

> **Definition:** The expression $$A := \{x \mid \varphi(x)\}$$ is defined by:
> $$
> \forall x \ (x \in A \iff \varphi(x))
> $$
> Bounded comprehension within a designated universe $$X$$ is defined as $$\{x \in X \mid \varphi(x)\} := \{x \mid x \in X \land \varphi(x)\}$$.

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

> **Definition:** The *Cartesian product* of sets $$A$$ and $$B$$ is defined as:
> $$
> A \times B := \{(a, b) \mid a \in A \land b \in B\}
> $$
> Cartesian powers are defined inductively by $$A^0 := \{\emptyset\}$$ and $$A^{n+1} := A^n \times A$$.

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
> When viewed as a function, it is denoted $$\operatorname{id}_X$$ and called the *identity function* on $$X$$.

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

<h4 id="def-bijection">Bijection & Inverses</h4>

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

> **Definition:** For $$f \colon A \longrightarrow B$$ and $$S \subseteq A$$, the *restriction* of $$f$$ to $$S$$ is:
> $$
> f \vert_S := f \cap (S \times B)
> $$

---

<h4 id="def-function-set">Function Sets Bᴬ</h4>

> **Definition:** For sets $$A$$ and $$B$$, the set of all functions from $$A$$ to $$B$$ is denoted:
> $$
> B^A := \{f \colon A \longrightarrow B\}
> $$

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
> * **$$\min_\le S$$ / $$\max_\le S$$:** The least (respectively greatest) element belonging directly to $$S$$, if it exists.

---

<h4 id="def-chain">Chain</h4>

> **Definition:** A subset $$\mathcal{C} \subseteq X$$ in a poset $$(X, \le)$$ is a *chain* if:
> $$
> \forall x, y \in \mathcal{C} \ (x < y \lor x = y \lor x > y)
> $$
> The set of all chains of $$X$$ is denoted $$\operatorname{Chains}(X)$$.

---

<h4 id="def-well-ordering">Well-Ordering</h4>

> **Definition:** A partial order $$\le$$ on $$X$$ is a *well-ordering* if every non-empty subset of $$X$$ contains a least element. The pair $$(X, \le)$$ is called a *well-ordered set* (or *woset*).

---

<h4 id="def-well-founded">Well-Founded Relation</h4>

> **Definition:** A binary relation $$R \subseteq A \times A$$ is *well-founded* if every non-empty subset of $$A$$ has a minimal element with respect to $$R$$.

---

### Lattice Theory & Fixed Points

<h4 id="def-lattice">Lattice</h4>

> **Definition:** A *lattice* is a triple $$(L, \land, \lor)$$ satisfying for all $$x, y, z \in L$$:
> 1. **Commutativity:** $$x \land y = y \land x$$ and $$x \lor y = y \lor x$$
> 2. **Associativity:** $$(x \land y) \land z = x \land (y \land z)$$ and $$(x \lor y) \lor z = x \lor (y \lor z)$$
> 3. **Absorption:** $$x \land (x \lor y) = x$$ and $$x \lor (x \land y) = x$$
> 
> The natural partial order is induced by $$x \le y \iff x \land y = x$$, under which $$x \land y = \inf\{x, y\}$$ and $$x \lor y = \sup\{x, y\}$$.

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

<h4 id="def-fixed-point">Fixed Points & Least Fixed Point (μf)</h4>

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

### Propositional Calculus

<h4 id="def-propositional-syntax">Syntax & Formulae (Frm)</h4>

> **Definition:** Let $$\mathbf{Var} := \{p_1, p_2, \dots\}$$ be variables, and $$\mathbf{Con} := \{c_1^0, \dots, c_1^1, \dots\}$$ be logical connectives with superscripts denoting arity. The set of propositional formulae $$\textbf{Frm}$$ is the smallest set satisfying:
> 1. All variables in $$\mathbf{Var}$$ are in $$\textbf{Frm}$$.
> 2. If $$\varphi_1, \dots, \varphi_n \in \textbf{Frm}$$ and $$c_k^n$$ is an $$n$$-ary connective, then the string $$c_k^n(\varphi_1, \dots, \varphi_n)$$ is in $$\textbf{Frm}$$.

---

<h4 id="def-formula-complexity">Formula Complexity</h4>

> **Definition:** The *complexity* of a formula $$\varphi \in \textbf{Frm}$$ is defined recursively by:
> 1. $$\operatorname{comp}(p) = 0$$ for any variable $$p \in \mathbf{Var}$$ and 0-ary connective $$c_n^0$$.
> 2. $$\operatorname{comp}(c_k^n(\varphi_1, \dots, \varphi_n)) = \max\{\operatorname{comp}(\varphi_1), \dots, \operatorname{comp}(\varphi_n)\} + 1$$.

---

<h4 id="def-valuation">Valuation & Standard Interpretation</h4>

> **Definition:** An *interpretation* (or *valuation*) is a function $$\mathcal{I} \colon \mathbf{Var} \longrightarrow \{\False, \True\}$$. 
> 
> The standard extended interpretation $$\hat{\mathcal{I}} \colon \textbf{Frm} \longrightarrow \{\False, \True\}$$ agrees with $$\mathcal{I}$$ on variables and evaluates connectives via classical truth tables.

---

<h4 id="def-tautology">Equivalence, Tautology, and Contradiction</h4>

> **Definition:** 
> * Formulae $$\varphi$$ and $$\psi$$ are *equivalent* ($$\varphi \equiv \psi$$) if $$\mathcal{I}(\varphi) = \mathcal{I}(\psi)$$ for all valuations $$\mathcal{I}$$.
> * A formula $$\varphi$$ is a *tautology* if $$\varphi \equiv \top$$.
> * A formula $$\varphi$$ is a *contradiction* if $$\varphi \equiv \bot$$.
> * A formula $$\varphi$$ is *satisfiable* if there exists some valuation $$\mathcal{I}$$ with $$\mathcal{I}(\varphi) = \True$$.

---

<h4 id="def-entailment">Entailment (⊨)</h4>

> **Definition:** A set of formulae $$\Sigma$$ *entails* $$\varphi$$, written $$\Sigma \models \varphi$$, if every interpretation that satisfies every formula in $$\Sigma$$ also satisfies $$\varphi$$.

---

<h4 id="def-functional-completeness">Functional Completeness</h4>

> **Definition:** A set of logical connectives $$\mathscr{C}$$ is *functionally complete* if every possible formula is semantically equivalent to some formula containing only connectives from $$\mathscr{C}$$.
