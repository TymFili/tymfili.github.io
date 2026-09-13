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
* **Proof Theory & Deductive Systems:**
  * [Proof System](#def-proof-system) &bull; [Formal Proof & Consequence (⊢)](#def-formal-proof) &bull; [Modus Ponens](#def-modus-ponens) &bull; [Tautology System](#def-tautology-system) &bull; [Hilbert System](#def-hilbert-system) &bull; [Consistency & Inconsistency](#def-consistency) &bull; [Soundness & Completeness](#def-soundness-completeness) &bull; [Proof Trees & Natural Deduction](#def-proof-tree)
* **First-Order Syntax & Prefix Weighting:**
  * [Signature](#def-signature) &bull; [Alphabet of FOL](#def-fol-alphabet) &bull; [Terms (Trm)](#def-terms) &bull; [Formulae (Frm)](#def-fol-formulae) &bull; [Symbol Weight & Unique Readability](#def-symbol-weight) &bull; [Abbreviation Conventions](#def-abbreviations) &bull; [Functional Formulae](#def-functional-formula)
* **Tarskian Semantics & Canonical Models:**
  * [Structure & Universe](#def-structure) &bull; [Variable Assignment](#def-variable-assignment) &bull; [Term Valuation](#def-term-valuation) &bull; [Modified Assignment](#def-modified-assignment) &bull; [Tarskian Satisfaction (⊨)](#def-satisfaction) &bull; [First-Order Entailment](#def-fol-entailment) &bull; [Canonical Term Structure (Verifier)](#def-term-verifier) &bull; [Quotient Model](#def-quotient-model)
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

---

### Proof Theory & Deductive Systems

<h4 id="def-proof-system">Proof System</h4>

> **Definition:** A *proof system* is a triple $$(\mathscr{L}, \mathscr{R}, \mathscr{A})$$, where:
> 1. $$\mathscr{L}$$ is a formal language.
> 2. $$\mathscr{R}$$ is a set of rules of inference.
> 3. $$\mathscr{A}$$ is a set of axioms.

---

<h4 id="def-formal-proof">Formal Proof, Derivability (⊢), and Theorems</h4>

> **Definition:** A *proof* in a proof system $$(\mathscr{L}, \mathscr{R}, \mathscr{A})$$ is a finite sequence of formulae in $$\mathscr{L}$$, where each formula is an axiom, an assumption, or follows from preceding formulae via an inference rule.
> 
> We write $$\Sigma \vdash \phi$$ (*"$$\Sigma$$ proves $$\phi$$"*) if there exists a formal proof of $$\phi$$ with active assumptions in $$\Sigma$$. A formula $$\varphi$$ is a *theorem* if $$\emptyset \vdash \varphi$$, written simply as $$\vdash \varphi$$.

---

<h4 id="def-modus-ponens">Modus Ponens</h4>

> **Definition:** *Modus Ponens* is the rule of inference: from $$\phi$$ and $$\phi \rightarrow \psi$$, we may infer $$\psi$$.

---

<h4 id="def-tautology-system">Tautology System</h4>

> **Definition:** The *tautology system* is a propositional proof system where $$\mathscr{R}$$ contains only Modus Ponens, and $$\mathscr{A}$$ consists of all semantic tautologies.

---

<h4 id="def-hilbert-system">Hilbert System</h4>

> **Definition:** The *Hilbert system* is a propositional proof system where $$\mathscr{R}$$ contains only Modus Ponens, and the axioms $$\mathscr{A}$$ are all formulae of the following forms:
> * **A1:** $$\phi \rightarrow (\psi \rightarrow \phi)$$
> * **A2:** $$(\phi \rightarrow (\psi \rightarrow \chi)) \rightarrow ((\phi \rightarrow \psi) \rightarrow (\phi \rightarrow \chi))$$
> * **A3:** $$(\neg \phi \rightarrow \neg \psi) \rightarrow (\psi \rightarrow \phi)$$

---

<h4 id="def-consistency">Consistency & Inconsistency</h4>

> **Definition:** A set of formulae $$\Gamma$$ is *inconsistent* if $$\Gamma \vdash \bot$$. A set $$\Gamma$$ is *consistent* if it is not inconsistent ($$\Gamma \nvdash \bot$$).

---

<h4 id="def-soundness-completeness">Soundness & Completeness of Proof Systems</h4>

> **Definition:** A proof system is:
> * **Sound:** if $$\Sigma \vdash \phi \implies \Sigma \models \phi$$ (every provable formula is semantically true).
> * **Complete:** if $$\Sigma \models \phi \implies \Sigma \vdash \phi$$ (every semantic consequence is formally provable).

---

<h4 id="def-proof-tree">Proof Trees & Natural Deduction</h4>

> **Definition:** The set of *proof trees* over language $$\mathscr{L}$$ and rules $$\mathscr{R}$$ is defined inductively:
> 1. For any $$\phi \in \mathscr{L}$$, the single-node tree $$\phi$$ is a proof tree with *open assumption* $$\phi$$.
> 2. If subtrees $$\Pi_1, \dots, \Pi_k$$ have conclusions $$\phi_1, \dots, \phi_k$$, and $$\frac{\phi_1 \dots \phi_k}{\psi}$$ is an inference rule, placing $$\psi$$ as the new root yields a proof tree of $$\psi$$.
> 
> When an inference rule *discharges* an assumption, all leaves labeled with that formula are enclosed in brackets and indexed: $$[\phi]^n$$. A formula $$\phi$$ is provable in Natural Deduction ($$\Sigma \vdash \phi$$) if there exists a finite proof tree with root $$\phi$$ whose undischarged assumptions belong to $$\Sigma$$.

---

### First-Order Syntax & Prefix Weighting

<h4 id="def-signature">Signature</h4>

> **Definition:** A *signature* $$\sigma$$ is a quadruple $$(\mathbf{F}, \mathbf{R}, \mathbf{C}, \operatorname{ar})$$, where $$\mathbf{F}$$ (function symbols), $$\mathbf{R}$$ (relation symbols), and $$\mathbf{C}$$ (constant symbols) are pairwise disjoint sets, no element of which is an initial segment of another. The arity function $$\operatorname{ar}$$ assigns a non-negative integer to each symbol in $$\mathbf{F} \cup \mathbf{R}$$.

---

<h4 id="def-fol-alphabet">Alphabet of First-Order Logic</h4>

> **Definition:** The alphabet of First-Order Logic over signature $$\sigma$$ consists of:
> 1. **Logical symbols:** Connectives ($$\neg, \land, \lor, \rightarrow, \leftrightarrow$$) and Quantifiers ($$\forall, \exists$$).
> 2. **Variables:** $$x_0, x_1, x_2, \dots$$
> 3. **Non-logical symbols:** Functions $$\mathbf{F}$$, Relations $$\mathbf{R}$$, and Constants $$\mathbf{C}$$.
> 4. **Equality:** The symbol $$=$$.

---

<h4 id="def-terms">Terms (Trm)</h4>

> **Definition:** The set of *terms* $$\mathbf{Trm}(\sigma)$$ over $$\sigma$$ is the smallest set satisfying:
> 1. All constant symbols in $$\mathbf{C}$$ and all variables are in $$\mathbf{Trm}(\sigma)$$.
> 2. If $$t_1, \dots, t_n \in \mathbf{Trm}(\sigma)$$ and $$f \in \mathbf{F}$$ is an $$n$$-ary function symbol, the string $$f t_1 \dots t_n$$ is in $$\mathbf{Trm}(\sigma)$$.

---

<h4 id="def-fol-formulae">Formulae (AtFrm and Frm)</h4>

> **Definition:** The sets of *atomic formulae* $$\mathbf{AtFrm}(\sigma)$$ and *formulae* $$\mathbf{Frm}(\sigma)$$ are defined inductively:
> 1. **Atomic:** If $$t_1, \dots, t_n \in \mathbf{Trm}(\sigma)$$ and $$R \in \mathbf{R}$$ is an $$n$$-ary relation symbol, then $$R t_1 \dots t_n \in \mathbf{AtFrm}(\sigma)$$. If $$t_1, t_2 \in \mathbf{Trm}(\sigma)$$, then $$= t_1 t_2 \in \mathbf{AtFrm}(\sigma)$$.
> 2. **Inclusion:** $$\mathbf{AtFrm}(\sigma) \subseteq \mathbf{Frm}(\sigma)$$.
> 3. **Compound:** If $$\varphi, \psi \in \mathbf{Frm}(\sigma)$$, then $$\neg \varphi$$, $$\land \varphi \psi$$, $$\lor \varphi \psi$$, $$\rightarrow \varphi \psi$$, $$\leftrightarrow \varphi \psi$$, $$\forall x \varphi$$, and $$\exists x \varphi$$ are in $$\mathbf{Frm}(\sigma)$$.

---

<h4 id="def-symbol-weight">Symbol Weight & Unique Readability</h4>

> **Definition:** The *weight assignment* $$w$$ on first-order symbols is defined by:
> * $$w(f) := \operatorname{ar}(f) - 1$$ for $$f \in \mathbf{F}$$
> * $$w(R) := \operatorname{ar}(R) - 1$$ for $$R \in \mathbf{R}$$
> * $$w(c) := -1$$ for $$c \in \mathbf{C}$$, and $$w(x_i) := -1$$ for variables
> * $$w(=) := 1$$
> * $$w(\neg) := 0$$, and $$w(\land) = w(\lor) = w(\rightarrow) = w(\leftrightarrow) := 1$$
> * $$w(\forall) = w(\exists) := 1$$
> 
> The cumulative weight of a string is $$\hat{w}(\varepsilon) := 0$$ and $$\hat{w}(\sigma s) := \hat{w}(\sigma) + w(s)$$. A string $$t$$ is a term if and only if $$\hat{w}(t) = -1$$ and every proper initial segment has weight $$\ge 0$$. This guarantees that prefix notation is uniquely readable without parentheses.

---

<h4 id="def-abbreviations">Abbreviation Conventions</h4>

> **Definition:** For ease of reading, standard infix abbreviations are adopted:
> 1. $$\varphi(\bar{x})$$ abbreviates $$\varphi(x_1, \dots, x_n)$$.
> 2. Bounded universal quantification: $$\forall R(\bar{x}) \ \varphi := \forall \bar{x} (R(\bar{x}) \rightarrow \varphi)$$.
> 3. Bounded existential quantification: $$\exists R(\bar{x}) \ \varphi := \exists \bar{x} (R(\bar{x}) \land \varphi)$$.
> 4. Unique existence: $$\exists! x \ \varphi(x) := \exists x (\varphi(x) \land \forall y (\varphi(y) \rightarrow x = y))$$.

---

<h4 id="def-functional-formula">Functional Formula</h4>

> **Definition:** A first-order formula $$\varphi(\bar{x}, y)$$ is *functional* in $$y$$ if:
> $$
> \forall \bar{x} \exists! y \ \varphi(\bar{x}, y)
> $$

---

### Tarskian Semantics & Canonical Models

<h4 id="def-structure">Structure & Universe</h4>

> **Definition:** A *structure* $$\mathfrak{A}$$ over signature $$\sigma = (\mathbf{F}, \mathbf{R}, \mathbf{C}, \operatorname{ar})$$ is a pair $$(A, \cdot^\mathfrak{A})$$, where $$A \ne \emptyset$$ is a set called the *universe* (denoted $$\vert \mathfrak{A} \vert$$), and $$\cdot^\mathfrak{A}$$ is an interpretation function mapping:
> 1. Each $$n$$-ary $$f \in \mathbf{F}$$ to a function $$f^\mathfrak{A} \colon A^n \longrightarrow A$$.
> 2. Each $$n$$-ary $$R \in \mathbf{R}$$ to a relation $$R^\mathfrak{A} \subseteq A^n$$.
> 3. Each constant $$c \in \mathbf{C}$$ to an element $$c^\mathfrak{A} \in A$$.

---

<h4 id="def-variable-assignment">Variable Assignment</h4>

> **Definition:** A *variable assignment* in a structure $$\mathfrak{A}$$ is a function $$s \colon \mathbf{Var} \longrightarrow \vert \mathfrak{A} \vert$$.

---

<h4 id="def-term-valuation">Term Valuation Function (s̄)</h4>

> **Definition:** The *valuation function* $$\bar{s} \colon \mathbf{Trm}(\sigma) \longrightarrow \vert \mathfrak{A} \vert$$ corresponding to assignment $$s$$ is defined recursively:
> 1. $$\bar{s}(x_i) := s(x_i)$$ for variables.
> 2. $$\bar{s}(c) := c^\mathfrak{A}$$ for constants.
> 3. $$\bar{s}(f t_1 \dots t_n) := f^\mathfrak{A}(\bar{s}(t_1), \dots, \bar{s}(t_n))$$.

---

<h4 id="def-modified-assignment">Modified Assignment</h4>

> **Definition:** For an assignment $$s$$, variable $$x$$, and element $$t \in \vert \mathfrak{A} \vert$$, the *modified assignment* $$s_{x \mapsto t}$$ is defined by:
> $$
> s_{x \mapsto t}(y) := \begin{cases} s(y) & \text{if } y \ne x, \\ t & \text{if } y = x. \end{cases}
> $$

---

<h4 id="def-satisfaction">Tarskian Satisfaction Relation (⊨)</h4>

> **Definition:** The *satisfaction relation* $$\mathfrak{A} \models \varphi[s]$$, stating that assignment $$s$$ satisfies formula $$\varphi$$ in structure $$\mathfrak{A}$$, is defined recursively:
> 1. $$\mathfrak{A} \models R t_1 \dots t_n[s] \iff (\bar{s}(t_1), \dots, \bar{s}(t_n)) \in R^\mathfrak{A}$$
> 2. $$\mathfrak{A} \models {= t_1 t_2}[s] \iff \bar{s}(t_1) = \bar{s}(t_2)$$
> 3. $$\mathfrak{A} \models \neg \psi[s] \iff \mathfrak{A} \not\models \psi[s]$$
> 4. $$\mathfrak{A} \models (\psi \land \xi)[s] \iff \mathfrak{A} \models \psi[s] \land \mathfrak{A} \models \xi[s]$$
> 5. $$\mathfrak{A} \models (\psi \lor \xi)[s] \iff \mathfrak{A} \models \psi[s] \lor \mathfrak{A} \models \xi[s]$$
> 6. $$\mathfrak{A} \models (\psi \rightarrow \xi)[s] \iff \mathfrak{A} \not\models \psi[s] \lor \mathfrak{A} \models \xi[s]$$
> 7. $$\mathfrak{A} \models (\psi \leftrightarrow \xi)[s] \iff (\mathfrak{A} \models \psi[s] \iff \mathfrak{A} \models \xi[s])$$
> 8. $$\mathfrak{A} \models \forall x \psi[s] \iff \forall t \in \vert \mathfrak{A} \vert \ \mathfrak{A} \models \psi[s_{x \mapsto t}]$$
> 9. $$\mathfrak{A} \models \exists x \psi[s] \iff \exists t \in \vert \mathfrak{A} \vert \ \mathfrak{A} \models \psi[s_{x \mapsto t}]$$

---

<h4 id="def-fol-entailment">First-Order Entailment</h4>

> **Definition:** A set of first-order formulae $$\Sigma$$ *entails* $$\varphi$$, written $$\Sigma \models \varphi$$, if for every structure $$\mathfrak{A}$$ and assignment $$s$$, whenever $$\mathfrak{A} \models \psi[s]$$ for all $$\psi \in \Sigma$$, we have $$\mathfrak{A} \models \varphi[s]$$.

---

<h4 id="def-term-verifier">Canonical Term Structure (Γ-Verifier)</h4>

> **Definition:** Let $$\Delta$$ be a maximal consistent set of formulae containing Henkin witness constants. The *canonical term structure* (or $$\Gamma$$-verifier) $$\mathfrak{A}$$ has universe $$\vert \mathfrak{A} \vert := \mathbf{Trm}(\mathscr{L} \cup \{c_n\})$$, with functions and relations defined purely syntactically:
> 1. $$f^\mathfrak{A}(t_1, \dots, t_n) := f t_1 \dots t_n$$
> 2. $$R^\mathfrak{A}(t_1, \dots, t_n) \iff R t_1 \dots t_n \in \Delta$$
> 3. $$E^\mathfrak{A}(t_1, t_2) \iff {= t_1 t_2} \in \Delta$$

---

<h4 id="def-quotient-model">Quotient Model (Γ-Model)</h4>

> **Definition:** The *canonical quotient model* $$\mathfrak{A}' := \mathfrak{A} / E^\mathfrak{A}$$ is obtained by collapsing syntactically provable equalities into equivalence classes $$[t]$$:
> 1. $$f^{\mathfrak{A}'}([t_1], \dots, [t_n]) := [f t_1 \dots t_n]$$
> 2. $$R^{\mathfrak{A}'}([t_1], \dots, [t_n]) \iff R t_1 \dots t_n \in \Delta$$
> 
> Under this construction, $$\mathfrak{A}' \models \phi \iff \phi \in \Delta$$.

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
