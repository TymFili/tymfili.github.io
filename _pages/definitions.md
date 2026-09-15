---
layout: page
title: Definitions
permalink: /definitions/
description: A curated reference library of formal mathematical definitions from logic and set theory.
nav: true
nav_order: 4
---

Welcome to the central dictionary of mathematical definitions. This archive establishes the formal notation and concepts from [My Lecture Notes on Mathematical Logic](/assets/pdf/logic.pdf), serving as the foundational lexicon for the blog and the [Theorems & Proofs Library](/theorems/).

---

### Table of Contents
* **Informal Logic & Foundations:**
  * [Proposition](#def-proposition) &bull; [Argument](#def-argument) &bull; [Validity](#def-validity) &bull; [Soundness](#def-soundness)
* **Naive Set Theory:**
  * [Set and Membership](#def-set) &bull; [Subset and Extensional Equality](#def-subset) &bull; [Set Comprehension](#def-comprehension) &bull; [Empty Set](#def-empty-set) &bull; [Ordered Pair](#def-ordered-pair) &bull; [Cartesian Product and Powers](#def-cartesian-product) &bull; [Power Set](#def-power-set) &bull; [Unions, Intersections, and Differences](#def-union-intersection)
* **Relations & Functions:**
  * [Relations](#def-relation) &bull; [Domain and Range](#def-domain-range) &bull; [Functional Relation](#def-functional-relation) &bull; [Function](#def-function) &bull; [Composition](#def-composition) &bull; [Identity Function and Diagonal Relation](#def-diagonal-relation) &bull; [Inclusion](#def-inclusion) &bull; [Injection](#def-injection) &bull; [Surjection](#def-surjection) &bull; [Bijection and Invertibility](#def-bijection) &bull; [Image and Preimage](#def-image-preimage) &bull; [Restriction](#def-restriction) &bull; [Function Sets Bᴬ](#def-function-set) &bull; [Natural Numbers and Integers (ℕ, ℤ)](#def-natural-integers)
* **Equivalence Relations & Quotients:**
  * [Relational Properties](#def-relation-properties) &bull; [Equivalence Relation](#def-equivalence-relation) &bull; [Equivalence Class](#def-equivalence-class) &bull; [Quotient Set](#def-quotient-set) &bull; [Partition](#def-partition)
* **Order Theory:**
  * [Strict and Weak Relations](#def-strict-weak-relations) &bull; [Poset and Total Order](#def-poset) &bull; [Initial Segment](#def-initial-segment) &bull; [Bounds, Extremal Elements, and Min/Max](#def-bounds-min-max) &bull; [Completeness Axiom of ℝ](#def-completeness-axiom) &bull; [Chain](#def-chain) &bull; [Well-Ordering (Woset)](#def-well-ordering) &bull; [Successor Element](#def-successor-element) &bull; [Well-Founded Relation](#def-well-founded) &bull; [Order Boundedness, Cofinality, and Density](#def-order-boundedness)
* **Lattice Theory & Fixed Points:**
  * [Lattice](#def-lattice) &bull; [Complete Lattice](#def-complete-lattice) &bull; [Monotone Function](#def-monotone-function) &bull; [Fixed Point and Least Fixed Point (μf)](#def-fixed-point)
* **Formal Languages:**
  * [Alphabet](#def-alphabet) &bull; [Strings (Σ*)](#def-strings) &bull; [Concatenation](#def-concatenation) &bull; [Language](#def-language) &bull; [Initial Segment of a String](#def-string-initial-segment)
* **Propositional Calculus: Syntax:**
  * [Variables, Connectives, and Formulae (Frm)](#def-pc-syntax) &bull; [Formula Complexity](#def-pc-complexity)
* **Propositional Calculus: Semantics:**
  * [Valuation and Extended Interpretation](#def-pc-valuation) &bull; [Logical Equivalence](#def-pc-equivalence) &bull; [Tautology and Contradiction](#def-pc-tautology-contradiction) &bull; [Formula Satisfiability (PC)](#def-pc-satisfiability-formula) &bull; [Set Satisfiability (PC)](#def-pc-satisfiability-set) &bull; [Entailment (PC)](#def-pc-entailment) &bull; [Functional Completeness](#def-pc-functional-completeness)
* **Proof Theory:**
  * [Proof System](#def-proof-system) &bull; [Formal Proof](#def-formal-proof) &bull; [Syntactic Provability (⊢) and Theorems](#def-provability) &bull; [Modus Ponens](#def-modus-ponens) &bull; [Tautology System](#def-tautology-system) &bull; [Hilbert System](#def-hilbert-system) &bull; [Consistency and Inconsistency](#def-consistency) &bull; [Soundness and Completeness of a Proof System](#def-system-soundness-completeness) &bull; [Proof Trees and Discharging](#def-proof-tree) &bull; [Natural Deduction Derivation](#def-nd-derivation)
* **First-Order Logic: Syntax:**
  * [Signature (σ)](#def-fol-signature) &bull; [First-Order Alphabet](#def-fol-alphabet) &bull; [Terms (Trm)](#def-fol-terms) &bull; [Atomic and Compound Formulae (Frm)](#def-fol-formulae) &bull; [Symbol Weight and Unique Readability](#def-fol-weight) &bull; [Free Variables (FV)](#def-fol-free-variables) &bull; [Precedence and Abbreviations](#def-fol-abbreviations) &bull; [Functional Formula](#def-fol-functional-formula)
* **First-Order Logic: Semantics:**
  * [Structure (𝔄)](#def-fol-structure) &bull; [Variable Assignment](#def-fol-assignment) &bull; [Term Valuation Function (s̄)](#def-fol-valuation-function) &bull; [Modified Assignment](#def-fol-modified-assignment) &bull; [Satisfaction Relation (⊨)](#def-fol-satisfaction) &bull; [Sentence](#def-sentence) &bull; [Truth in a Structure](#def-truth-structure) &bull; [First-Order Satisfiability, Unsatisfiability, Validity, and Invalidity](#def-fol-validity) &bull; [Model of a Set of Formulae](#def-model-theory) &bull; [First-Order Entailment](#def-fol-entailment) &bull; [Set Satisfiability (FOL)](#def-fol-set-satisfiability)
* **Metatheory of Classical Logic:**
  * [Finite Satisfiability](#def-finitely-satisfiable) &bull; [Henkin Witness Property](#def-henkin-property) &bull; [Maximal Consistency](#def-maximally-consistent) &bull; [Canonical Term Structure (Γ-Verifier)](#def-term-verifier) &bull; [Quotient Model (Γ-Model)](#def-quotient-model)
* **Axioms of ZFC⁻ (Chapter 7):**
  * [Axiom of Extensionality (Ex)](#def-axiom-extensionality) &bull; [Axiom of Empty Set (ES)](#def-axiom-empty-set) &bull; [Axiom of Pair (Pa)](#def-axiom-pairing) &bull; [Axiom of Union (U)](#def-axiom-union) &bull; [Axiom of Power Set (PS)](#def-axiom-power-set) &bull; [Axiom of Infinity (I)](#def-axiom-infinity) &bull; [Axiom Schema of Specification (S)](#def-axiom-specification) &bull; [Axiom Schema of Replacement (R)](#def-axiom-replacement) &bull; [Axiom of Choice (AC)](#def-axiom-choice)
* **Axiomatic Set Theory: Foundations & Classes:**
  * [Language of Set Theory](#def-set-theory-language) &bull; [Kuratowski Ordered Pair](#def-ordered-pair-kuratowski) &bull; [Successor Set](#def-successor-set) &bull; [Z⁻ and ZF⁻](#def-z-minus-zf-minus) &bull; [Natural Numbers (ω, ℕ)](#def-omega-natural-numbers) &bull; [Transitive Set](#def-transitive-set) &bull; [Classes and The Universe (V)](#def-class-proper-class)
* **Axiomatic Set Theory: Ordinals & Choice:**
  * [Order Isomorphism and Automorphism](#def-order-isomorphism) &bull; [Initial Segment Embedding (⊑)](#def-initial-segment-embedding) &bull; [Ordinal Number (Ord)](#def-ordinal-number) &bull; [Ordinal Supremum and Infimum (sup, inf)](#def-ordinal-sup-inf) &bull; [Successor and Limit Ordinals](#def-successor-limit-ordinal) &bull; [Transfinite Recursion](#def-transfinite-recursion) &bull; [Ordinal Sequences and Limits](#def-ordinal-sequence) &bull; [Axiom of Choice (AC) and ZFC⁻](#def-axiom-choice)
* **Cardinal Numbers:**
  * [Cardinality of a Set](#def-cardinality-of-set) &bull; [Cardinal Number](#def-cardinal-number) &bull; [Cardinal Ordering (≤)](#def-cardinal-ordering) &bull; [Cardinal Arithmetic](#def-cardinal-arithmetic)
* **Theory of Computation:**
  * [Decidable Set](#def-decidable-set) &bull; [Semidecidable Set](#def-semidecidable-set) &bull; [Enumerator](#def-enumerator)

---

### Informal Logic & Foundations

<h4 id="def-proposition">Proposition</h4>

{% include definitions/proposition.md %}

---

<h4 id="def-argument">Argument</h4>

{% include definitions/argument.md %}

---

<h4 id="def-validity">Validity</h4>

{% include definitions/validity.md %}

---

<h4 id="def-soundness">Soundness</h4>

{% include definitions/soundness.md %}

---

### Naive Set Theory

<h4 id="def-set">Set and Membership</h4>

{% include definitions/set.md %}

---

<h4 id="def-subset">Subset and Extensional Equality</h4>

{% include definitions/subset.md %}

---

<h4 id="def-comprehension">Set Comprehension</h4>

{% include definitions/comprehension.md %}

---

<h4 id="def-empty-set">Empty Set</h4>

{% include definitions/empty_set.md %}

---

<h4 id="def-ordered-pair">Ordered Pair</h4>

{% include definitions/ordered_pair.md %}

---

<h4 id="def-cartesian-product">Cartesian Product and Powers</h4>

{% include definitions/cartesian_product.md %}

---

<h4 id="def-power-set">Power Set</h4>

{% include definitions/power_set.md %}

---

<h4 id="def-union-intersection">Unions, Intersections, and Differences</h4>

{% include definitions/union_intersection.md %}

---

### Relations & Functions

<h4 id="def-relation">Relations</h4>

{% include definitions/relation.md %}

---

<h4 id="def-domain-range">Domain and Range</h4>

{% include definitions/domain_range.md %}

---

<h4 id="def-functional-relation">Functional Relation</h4>

{% include definitions/functional_relation.md %}

---

<h4 id="def-function">Function</h4>

{% include definitions/function.md %}

---

<h4 id="def-composition">Composition</h4>

{% include definitions/composition.md %}

---

<h4 id="def-diagonal-relation">Identity Function and Diagonal Relation</h4>

{% include definitions/diagonal_relation.md %}

---

<h4 id="def-inclusion">Inclusion</h4>

{% include definitions/inclusion.md %}

---

<h4 id="def-injection">Injection</h4>

{% include definitions/injection.md %}

---

<h4 id="def-surjection">Surjection</h4>

{% include definitions/surjection.md %}

---

<h4 id="def-bijection">Bijection and Invertibility</h4>

{% include definitions/bijection.md %}

---

<h4 id="def-image-preimage">Image and Preimage</h4>

{% include definitions/image_preimage.md %}

---

<h4 id="def-restriction">Restriction</h4>

{% include definitions/restriction.md %}

---

<h4 id="def-function-set">Function Sets Bᴬ</h4>

{% include definitions/function_set.md %}

---

<h4 id="def-natural-integers">Natural Numbers and Integers (ℕ, ℤ)</h4>

{% include definitions/natural_integers.md %}

---

### Equivalence Relations & Quotients

<h4 id="def-relation-properties">Relational Properties</h4>

{% include definitions/relation_properties.md %}

---

<h4 id="def-equivalence-relation">Equivalence Relation</h4>

{% include definitions/equivalence_relation.md %}

---

<h4 id="def-equivalence-class">Equivalence Class</h4>

{% include definitions/equivalence_class.md %}

---

<h4 id="def-quotient-set">Quotient Set</h4>

{% include definitions/quotient_set.md %}

---

<h4 id="def-partition">Partition</h4>

{% include definitions/partition.md %}

---

### Order Theory

<h4 id="def-strict-weak-relations">Strict and Weak Relations</h4>

{% include definitions/strict_weak_relations.md %}

---

<h4 id="def-poset">Poset and Total Order</h4>

{% include definitions/poset.md %}

---

<h4 id="def-initial-segment">Initial Segment</h4>

{% include definitions/initial_segment.md %}

---

<h4 id="def-bounds-min-max">Bounds, Extremal Elements, and Min/Max</h4>

{% include definitions/bounds_min_max.md %}

---

<h4 id="def-completeness-axiom">The Completeness Axiom of ℝ</h4>

{% include definitions/completeness_axiom.md %}

---

<h4 id="def-chain">Chain</h4>

{% include definitions/chain.md %}

---

<h4 id="def-well-ordering">Well-Ordering (Woset)</h4>

{% include definitions/well_ordering.md %}

---

<h4 id="def-successor-element">Successor Element</h4>

{% include definitions/successor_element.md %}

---

<h4 id="def-well-founded">Well-Founded Relation</h4>

{% include definitions/well_founded.md %}

---

<h4 id="def-order-boundedness">Order Boundedness, Cofinality, and Density</h4>

{% include definitions/order_boundedness.md %}

---

### Lattice Theory & Fixed Points

<h4 id="def-lattice">Lattice</h4>

{% include definitions/lattice.md %}

---

<h4 id="def-complete-lattice">Complete Lattice</h4>

{% include definitions/complete_lattice.md %}

---

<h4 id="def-monotone-function">Monotone Function</h4>

{% include definitions/monotone_function.md %}

---

<h4 id="def-fixed-point">Fixed Point and Least Fixed Point (μf)</h4>

{% include definitions/fixed_point.md %}

---

### Formal Languages

<h4 id="def-alphabet">Alphabet</h4>

{% include definitions/alphabet.md %}

---

<h4 id="def-strings">Strings (Σ*)</h4>

{% include definitions/strings.md %}

---

<h4 id="def-concatenation">Concatenation</h4>

{% include definitions/concatenation.md %}

---

<h4 id="def-language">Language</h4>

{% include definitions/language.md %}

---

<h4 id="def-string-initial-segment">Initial Segment of a String</h4>

{% include definitions/string_initial_segment.md %}

---

### Propositional Calculus: Syntax

<h4 id="def-pc-syntax">Variables, Connectives, and Formulae (Frm)</h4>

{% include definitions/pc_syntax.md %}

---

<h4 id="def-pc-complexity">Formula Complexity</h4>

{% include definitions/pc_complexity.md %}

---

### Propositional Calculus: Semantics

<h4 id="def-pc-valuation">Valuation and Extended Interpretation</h4>

{% include definitions/pc_valuation.md %}

---

<h4 id="def-pc-equivalence">Logical Equivalence</h4>

{% include definitions/pc_equivalence.md %}

---

<h4 id="def-pc-tautology-contradiction">Tautology and Contradiction</h4>

{% include definitions/pc_tautology_contradiction.md %}

---

<h4 id="def-pc-satisfiability-formula">Formula Satisfiability (PC)</h4>

{% include definitions/pc_satisfiability_formula.md %}

---

<h4 id="def-pc-satisfiability-set">Set Satisfiability (PC)</h4>

{% include definitions/pc_satisfiability_set.md %}

---

<h4 id="def-pc-entailment">Entailment (PC)</h4>

{% include definitions/pc_entailment.md %}

---

<h4 id="def-pc-functional-completeness">Functional Completeness</h4>

{% include definitions/pc_functional_completeness.md %}

---

### Proof Theory

<h4 id="def-proof-system">Proof System</h4>

{% include definitions/proof_system.md %}

---

<h4 id="def-formal-proof">Formal Proof</h4>

{% include definitions/formal_proof.md %}

---

<h4 id="def-provability">Syntactic Provability (⊢) and Theorems</h4>

{% include definitions/provability.md %}

---

<h4 id="def-modus-ponens">Modus Ponens</h4>

{% include definitions/modus_ponens.md %}

---

<h4 id="def-tautology-system">Tautology System</h4>

{% include definitions/tautology_system.md %}

---

<h4 id="def-hilbert-system">Hilbert System</h4>

{% include definitions/hilbert_system.md %}

---

<h4 id="def-consistency">Consistency and Inconsistency</h4>

{% include definitions/consistency.md %}

---

<h4 id="def-system-soundness-completeness">Soundness and Completeness of a Proof System</h4>

{% include definitions/system_soundness_completeness.md %}

---

<h4 id="def-proof-tree">Proof Trees and Discharging</h4>

{% include definitions/proof_tree.md %}

---

<h4 id="def-nd-derivation">Natural Deduction Derivation</h4>

{% include definitions/nd_derivation.md %}

---

### First-Order Logic: Syntax

<h4 id="def-fol-signature">Signature (σ)</h4>

{% include definitions/fol_signature.md %}

---

<h4 id="def-fol-alphabet">First-Order Alphabet</h4>

{% include definitions/fol_alphabet.md %}

---

<h4 id="def-fol-terms">Terms (Trm)</h4>

{% include definitions/fol_terms.md %}

---

<h4 id="def-fol-formulae">Atomic and Compound Formulae (Frm)</h4>

{% include definitions/fol_formulae.md %}

---

<h4 id="def-fol-weight">Symbol Weight and Unique Readability</h4>

{% include definitions/fol_weight.md %}

---

<h4 id="def-fol-free-variables">Free Variables (FV)</h4>

{% include definitions/fol_free_variables.md %}

---

<h4 id="def-fol-abbreviations">Precedence and Abbreviations</h4>

{% include definitions/fol_abbreviations.md %}

---

<h4 id="def-fol-functional-formula">Functional Formula</h4>

{% include definitions/fol_functional_formula.md %}

---

### First-Order Logic: Semantics

<h4 id="def-fol-structure">Structure (𝔄)</h4>

{% include definitions/fol_structure.md %}

---

<h4 id="def-fol-assignment">Variable Assignment</h4>

{% include definitions/fol_assignment.md %}

---

<h4 id="def-fol-valuation-function">Term Valuation Function (s̄)</h4>

{% include definitions/fol_valuation_function.md %}

---

<h4 id="def-fol-modified-assignment">Modified Assignment</h4>

{% include definitions/fol_modified_assignment.md %}

---

<h4 id="def-fol-satisfaction">Satisfaction Relation (⊨)</h4>

{% include definitions/fol_satisfaction.md %}

---

<h4 id="def-sentence">Sentence</h4>

{% include definitions/sentence.md %}

---

<h4 id="def-truth-structure">Truth in a Structure</h4>

{% include definitions/truth_structure.md %}

---

<h4 id="def-fol-validity">First-Order Satisfiability, Unsatisfiability, Validity, and Invalidity</h4>

{% include definitions/fol_validity.md %}

---

<h4 id="def-model-theory">Model of a Set of Formulae</h4>

{% include definitions/model_theory.md %}

---

<h4 id="def-fol-entailment">First-Order Entailment</h4>

{% include definitions/fol_entailment.md %}

---

<h4 id="def-fol-set-satisfiability">Set Satisfiability (FOL)</h4>

{% include definitions/fol_set_satisfiability.md %}

---

### Metatheory of Classical Logic

<h4 id="def-finitely-satisfiable">Finite Satisfiability</h4>

{% include definitions/finitely_satisfiable.md %}

---

<h4 id="def-henkin-property">Henkin Witness Property</h4>

{% include definitions/henkin_property.md %}

---

<h4 id="def-maximally-consistent">Maximal Consistency</h4>

{% include definitions/maximally_consistent.md %}

---

<h4 id="def-term-verifier">Canonical Term Structure (Γ-Verifier)</h4>

{% include definitions/term_verifier.md %}

---

<h4 id="def-quotient-model">Quotient Model (Γ-Model)</h4>

{% include definitions/quotient_model.md %}

---


### Axioms of ZFC⁻

<h4 id="def-axiom-extensionality">Axiom of Extensionality (Ex)</h4>

{% include definitions/axiom_extensionality.md %}

---

<h4 id="def-axiom-empty-set">Axiom of Empty Set (ES)</h4>

{% include definitions/axiom_empty_set.md %}

---

<h4 id="def-axiom-pairing">Axiom of Pair (Pa)</h4>

{% include definitions/axiom_pairing.md %}

---

<h4 id="def-axiom-union">Axiom of Union (U)</h4>

{% include definitions/axiom_union.md %}

---

<h4 id="def-axiom-power-set">Axiom of Power Set (PS)</h4>

{% include definitions/axiom_power_set.md %}

---

<h4 id="def-axiom-infinity">Axiom of Infinity (I)</h4>

{% include definitions/axiom_infinity.md %}

---

<h4 id="def-axiom-specification">Axiom Schema of Specification (S)</h4>

{% include definitions/axiom_specification.md %}

---

<h4 id="def-axiom-replacement">Axiom Schema of Replacement (R)</h4>

{% include definitions/axiom_replacement.md %}

---

### Axiomatic Set Theory: Foundations & Classes

<h4 id="def-set-theory-language">Language of Set Theory</h4>

{% include definitions/set_theory_language.md %}

---

<h4 id="def-ordered-pair-kuratowski">Kuratowski Ordered Pair</h4>

{% include definitions/ordered_pair_kuratowski.md %}

---

<h4 id="def-successor-set">Successor Set</h4>

{% include definitions/successor_set.md %}

---

<h4 id="def-z-minus-zf-minus">Z⁻ and ZF⁻</h4>

{% include definitions/z_minus_zf_minus.md %}

---

<h4 id="def-omega-natural-numbers">Natural Numbers (ω, ℕ)</h4>

{% include definitions/omega_natural_numbers.md %}

---

<h4 id="def-transitive-set">Transitive Set</h4>

{% include definitions/transitive_set.md %}

---

<h4 id="def-class-proper-class">Classes and The Universe (V)</h4>

{% include definitions/class_proper_class.md %}

---

### Axiomatic Set Theory: Ordinals & Choice

<h4 id="def-order-isomorphism">Order Isomorphism and Automorphism</h4>

{% include definitions/order_isomorphism.md %}

---

<h4 id="def-initial-segment-embedding">Initial Segment Embedding (⊑)</h4>

{% include definitions/initial_segment_embedding.md %}

---

<h4 id="def-ordinal-number">Ordinal Number (Ord)</h4>

{% include definitions/ordinal_number.md %}

---

<h4 id="def-ordinal-sup-inf">Ordinal Supremum and Infimum (sup, inf)</h4>

{% include definitions/ordinal_sup_inf.md %}

---

<h4 id="def-successor-limit-ordinal">Successor and Limit Ordinals</h4>

{% include definitions/successor_limit_ordinal.md %}

---

<h4 id="def-transfinite-recursion">Transfinite Recursion</h4>

{% include definitions/transfinite_recursion.md %}

---

<h4 id="def-ordinal-sequence">Ordinal Sequences and Limits</h4>

{% include definitions/ordinal_sequence.md %}

---

<h4 id="def-axiom-choice">Axiom of Choice (AC) and ZFC⁻</h4>

{% include definitions/axiom_choice.md %}

---

### Cardinal Numbers

<h4 id="def-cardinality-of-set">Cardinality of a Set</h4>

{% include definitions/cardinality_of_set.md %}

---

<h4 id="def-cardinal-number">Cardinal Number</h4>

{% include definitions/cardinal_number.md %}

---

<h4 id="def-cardinal-ordering">Cardinal Ordering (≤)</h4>

{% include definitions/cardinal_ordering.md %}

---

<h4 id="def-cardinal-arithmetic">Cardinal Arithmetic</h4>

{% include definitions/cardinal_arithmetic.md %}

---

### Theory of Computation

<h4 id="def-decidable-set">Decidable Set</h4>

{% include definitions/decidable_set.md %}

---

<h4 id="def-semidecidable-set">Semidecidable Set</h4>

{% include definitions/semidecidable_set.md %}

---

<h4 id="def-enumerator">Enumerator</h4>

{% include definitions/enumerator.md %}
