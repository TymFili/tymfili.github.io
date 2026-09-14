// Search engine integration with automatic modal closing and deep scrolling
(function() {
  const customItems = [
  {
    "id": "thm-knaster-tarski",
    "title": "The Knaster\u2013Tarski Fixed-Point Theorem",
    "section": "Theorems & Proofs",
    "url": "/theorems/#knaster-tarski",
    "path": "/theorems/",
    "anchor": "knaster-tarski"
  },
  {
    "id": "thm-general-induction",
    "title": "The General Induction Principle",
    "section": "Theorems & Proofs",
    "url": "/theorems/#general-induction",
    "path": "/theorems/",
    "anchor": "general-induction"
  },
  {
    "id": "thm-induction-strings",
    "title": "Principle of Induction on Strings",
    "section": "Theorems & Proofs",
    "url": "/theorems/#induction-strings",
    "path": "/theorems/",
    "anchor": "induction-strings"
  },
  {
    "id": "thm-induction-formulas",
    "title": "Principle of Induction on Propositional Formulae",
    "section": "Theorems & Proofs",
    "url": "/theorems/#induction-formulas",
    "path": "/theorems/",
    "anchor": "induction-formulas"
  },
  {
    "id": "thm-finiteness-variables",
    "title": "Finiteness of Variable Occurrences",
    "section": "Theorems & Proofs",
    "url": "/theorems/#finiteness-variables",
    "path": "/theorems/",
    "anchor": "finiteness-variables"
  },
  {
    "id": "thm-deduction-theorem",
    "title": "The Propositional Deduction Theorem",
    "section": "Theorems & Proofs",
    "url": "/theorems/#deduction-theorem",
    "path": "/theorems/",
    "anchor": "deduction-theorem"
  },
  {
    "id": "thm-ex-falso",
    "title": "Ex Falso Quodlibet",
    "section": "Theorems & Proofs",
    "url": "/theorems/#ex-falso",
    "path": "/theorems/",
    "anchor": "ex-falso"
  },
  {
    "id": "thm-tautology-system",
    "title": "Deduction in the Tautology System",
    "section": "Theorems & Proofs",
    "url": "/theorems/#tautology-system",
    "path": "/theorems/",
    "anchor": "tautology-system"
  },
  {
    "id": "thm-free-variables",
    "title": "Free Variable Agreement Theorem",
    "section": "Theorems & Proofs",
    "url": "/theorems/#free-variables",
    "path": "/theorems/",
    "anchor": "free-variables"
  },
  {
    "id": "thm-tautology-soundness",
    "title": "Soundness of the Tautology System",
    "section": "Theorems & Proofs",
    "url": "/theorems/#tautology-soundness",
    "path": "/theorems/",
    "anchor": "tautology-soundness"
  },
  {
    "id": "thm-compactness-theorem",
    "title": "The Propositional Compactness Theorem",
    "section": "Theorems & Proofs",
    "url": "/theorems/#compactness-theorem",
    "path": "/theorems/",
    "anchor": "compactness-theorem"
  },
  {
    "id": "thm-tautology-completeness",
    "title": "Completeness of the Tautology System",
    "section": "Theorems & Proofs",
    "url": "/theorems/#tautology-completeness",
    "path": "/theorems/",
    "anchor": "tautology-completeness"
  },
  {
    "id": "thm-constant-extension",
    "title": "Consistency under Constant Extension",
    "section": "Theorems & Proofs",
    "url": "/theorems/#constant-extension",
    "path": "/theorems/",
    "anchor": "constant-extension"
  },
  {
    "id": "thm-henkin-constants",
    "title": "The Henkin Witness Construction",
    "section": "Theorems & Proofs",
    "url": "/theorems/#henkin-constants",
    "path": "/theorems/",
    "anchor": "henkin-constants"
  },
  {
    "id": "thm-lindenbaum-lemma",
    "title": "Lindenbaum's Maximal Extension Lemma",
    "section": "Theorems & Proofs",
    "url": "/theorems/#lindenbaum-lemma",
    "path": "/theorems/",
    "anchor": "lindenbaum-lemma"
  },
  {
    "id": "thm-term-model-truth",
    "title": "The Fundamental Truth Lemma for Term Structures",
    "section": "Theorems & Proofs",
    "url": "/theorems/#term-model-truth",
    "path": "/theorems/",
    "anchor": "term-model-truth"
  },
  {
    "id": "thm-godel-completeness",
    "title": "G\u00f6del's Completeness Theorem",
    "section": "Theorems & Proofs",
    "url": "/theorems/#godel-completeness",
    "path": "/theorems/",
    "anchor": "godel-completeness"
  },
  {
    "id": "thm-russell-paradox",
    "title": "Inconsistency of Naive Set Theory (Russell's Paradox)",
    "section": "Theorems & Proofs",
    "url": "/theorems/#russell-paradox",
    "path": "/theorems/",
    "anchor": "russell-paradox"
  },
  {
    "id": "thm-induction-omega",
    "title": "Principle of Induction on \u03c9",
    "section": "Theorems & Proofs",
    "url": "/theorems/#induction-omega",
    "path": "/theorems/",
    "anchor": "induction-omega"
  },
  {
    "id": "thm-well-ordered-induction",
    "title": "Principle of Well-Ordered Induction",
    "section": "Theorems & Proofs",
    "url": "/theorems/#well-ordered-induction",
    "path": "/theorems/",
    "anchor": "well-ordered-induction"
  },
  {
    "id": "thm-woset-automorphism",
    "title": "Uniqueness of Order Automorphisms on Wosets",
    "section": "Theorems & Proofs",
    "url": "/theorems/#woset-automorphism",
    "path": "/theorems/",
    "anchor": "woset-automorphism"
  },
  {
    "id": "thm-woset-initial-segment",
    "title": "Wosets and Initial Segments",
    "section": "Theorems & Proofs",
    "url": "/theorems/#woset-initial-segment",
    "path": "/theorems/",
    "anchor": "woset-initial-segment"
  },
  {
    "id": "thm-woset-comparability",
    "title": "Comparability of Well-Ordered Sets",
    "section": "Theorems & Proofs",
    "url": "/theorems/#woset-comparability",
    "path": "/theorems/",
    "anchor": "woset-comparability"
  },
  {
    "id": "thm-ordinal-subset-in",
    "title": "Strict Inclusion and Membership of Ordinals",
    "section": "Theorems & Proofs",
    "url": "/theorems/#ordinal-subset-in",
    "path": "/theorems/",
    "anchor": "ordinal-subset-in"
  },
  {
    "id": "thm-burali-forti",
    "title": "Extended Burali-Forti Theorem",
    "section": "Theorems & Proofs",
    "url": "/theorems/#burali-forti",
    "path": "/theorems/",
    "anchor": "burali-forti"
  },
  {
    "id": "thm-woset-to-ordinal",
    "title": "Isomorphism of Well-Orderings to Unique Ordinals",
    "section": "Theorems & Proofs",
    "url": "/theorems/#woset-to-ordinal",
    "path": "/theorems/",
    "anchor": "woset-to-ordinal"
  },
  {
    "id": "thm-hausdorff-maximal-principle",
    "title": "Hausdorff's Maximal Principle (The Tower Construction)",
    "section": "Theorems & Proofs",
    "url": "/theorems/#hausdorff-maximal-principle",
    "path": "/theorems/",
    "anchor": "hausdorff-maximal-principle"
  },
  {
    "id": "thm-zorns-lemma",
    "title": "Zorn's Lemma",
    "section": "Theorems & Proofs",
    "url": "/theorems/#zorns-lemma",
    "path": "/theorems/",
    "anchor": "zorns-lemma"
  },
  {
    "id": "thm-well-ordering-theorem",
    "title": "Zermelo's Well-Ordering Theorem",
    "section": "Theorems & Proofs",
    "url": "/theorems/#well-ordering-theorem",
    "path": "/theorems/",
    "anchor": "well-ordering-theorem"
  },
  {
    "id": "thm-wo-implies-ac",
    "title": "Equivalence: WO implies AC",
    "section": "Theorems & Proofs",
    "url": "/theorems/#wo-implies-ac",
    "path": "/theorems/",
    "anchor": "wo-implies-ac"
  },
  {
    "id": "thm-schroder-bernstein",
    "title": "The Schr\u00f6der\u2013Bernstein Theorem",
    "section": "Theorems & Proofs",
    "url": "/theorems/#schroder-bernstein",
    "path": "/theorems/",
    "anchor": "schroder-bernstein"
  },
  {
    "id": "thm-cantors-theorem",
    "title": "Cantor's Theorem on the Power Set",
    "section": "Theorems & Proofs",
    "url": "/theorems/#cantors-theorem",
    "path": "/theorems/",
    "anchor": "cantors-theorem"
  },
  {
    "id": "thm-hessenbergs-theorem",
    "title": "Hessenberg's Theorem on Cardinal Arithmetic",
    "section": "Theorems & Proofs",
    "url": "/theorems/#hessenbergs-theorem",
    "path": "/theorems/",
    "anchor": "hessenbergs-theorem"
  },
  {
    "id": "thm-cardinal-existence",
    "title": "Existence of Cardinal Numbers",
    "section": "Theorems & Proofs",
    "url": "/theorems/#cardinal-existence",
    "path": "/theorems/",
    "anchor": "cardinal-existence"
  },
  {
    "id": "thm-reals-and-power-set",
    "title": "Equinumerosity of \u211d and \ud835\udcab(\u2115)",
    "section": "Theorems & Proofs",
    "url": "/theorems/#reals-and-power-set",
    "path": "/theorems/",
    "anchor": "reals-and-power-set"
  },
  {
    "id": "thm-real-plane-dimension",
    "title": "The Dimension Paradox: \u211d ~ \u211d\u00b2",
    "section": "Theorems & Proofs",
    "url": "/theorems/#real-plane-dimension",
    "path": "/theorems/",
    "anchor": "real-plane-dimension"
  },
  {
    "id": "thm-real-interval-bijection",
    "title": "Scale Invariance: (0, 1) ~ \u211d",
    "section": "Theorems & Proofs",
    "url": "/theorems/#real-interval-bijection",
    "path": "/theorems/",
    "anchor": "real-interval-bijection"
  },
  {
    "id": "thm-archimedean-property",
    "title": "The Archimedean Property",
    "section": "Theorems & Proofs",
    "url": "/theorems/#archimedean-property",
    "path": "/theorems/",
    "anchor": "archimedean-property"
  },
  {
    "id": "thm-density-of-rationals",
    "title": "Density of \u211a in \u211d",
    "section": "Theorems & Proofs",
    "url": "/theorems/#density-of-rationals",
    "path": "/theorems/",
    "anchor": "density-of-rationals"
  },
  {
    "id": "thm-semidecidability-enumeration",
    "title": "Semidecidability and Dovetailing Enumeration",
    "section": "Theorems & Proofs",
    "url": "/theorems/#semidecidability-enumeration",
    "path": "/theorems/",
    "anchor": "semidecidability-enumeration"
  },
  {
    "id": "thm-kleene-theorem",
    "title": "Kleene's Post Theorem on Decidability",
    "section": "Theorems & Proofs",
    "url": "/theorems/#kleene-theorem",
    "path": "/theorems/",
    "anchor": "kleene-theorem"
  },
  {
    "id": "thm-semidecidable-closure",
    "title": "Closure Properties of [Semidecidable](/definitions/#def-semidecidable-set) Sets",
    "section": "Theorems & Proofs",
    "url": "/theorems/#semidecidable-closure",
    "path": "/theorems/",
    "anchor": "semidecidable-closure"
  },
  {
    "id": "def-def-proposition",
    "title": "Proposition",
    "section": "Definitions",
    "url": "/definitions/#def-proposition",
    "path": "/definitions/",
    "anchor": "def-proposition"
  },
  {
    "id": "def-def-argument",
    "title": "Argument",
    "section": "Definitions",
    "url": "/definitions/#def-argument",
    "path": "/definitions/",
    "anchor": "def-argument"
  },
  {
    "id": "def-def-validity",
    "title": "Validity",
    "section": "Definitions",
    "url": "/definitions/#def-validity",
    "path": "/definitions/",
    "anchor": "def-validity"
  },
  {
    "id": "def-def-soundness",
    "title": "Soundness",
    "section": "Definitions",
    "url": "/definitions/#def-soundness",
    "path": "/definitions/",
    "anchor": "def-soundness"
  },
  {
    "id": "def-def-set",
    "title": "Set and Membership",
    "section": "Definitions",
    "url": "/definitions/#def-set",
    "path": "/definitions/",
    "anchor": "def-set"
  },
  {
    "id": "def-def-subset",
    "title": "Subset and Extensional Equality",
    "section": "Definitions",
    "url": "/definitions/#def-subset",
    "path": "/definitions/",
    "anchor": "def-subset"
  },
  {
    "id": "def-def-comprehension",
    "title": "Set Comprehension",
    "section": "Definitions",
    "url": "/definitions/#def-comprehension",
    "path": "/definitions/",
    "anchor": "def-comprehension"
  },
  {
    "id": "def-def-empty-set",
    "title": "Empty Set",
    "section": "Definitions",
    "url": "/definitions/#def-empty-set",
    "path": "/definitions/",
    "anchor": "def-empty-set"
  },
  {
    "id": "def-def-ordered-pair",
    "title": "Ordered Pair",
    "section": "Definitions",
    "url": "/definitions/#def-ordered-pair",
    "path": "/definitions/",
    "anchor": "def-ordered-pair"
  },
  {
    "id": "def-def-cartesian-product",
    "title": "Cartesian Product and Powers",
    "section": "Definitions",
    "url": "/definitions/#def-cartesian-product",
    "path": "/definitions/",
    "anchor": "def-cartesian-product"
  },
  {
    "id": "def-def-power-set",
    "title": "Power Set",
    "section": "Definitions",
    "url": "/definitions/#def-power-set",
    "path": "/definitions/",
    "anchor": "def-power-set"
  },
  {
    "id": "def-def-union-intersection",
    "title": "Unions, Intersections, and Differences",
    "section": "Definitions",
    "url": "/definitions/#def-union-intersection",
    "path": "/definitions/",
    "anchor": "def-union-intersection"
  },
  {
    "id": "def-def-relation",
    "title": "Relations",
    "section": "Definitions",
    "url": "/definitions/#def-relation",
    "path": "/definitions/",
    "anchor": "def-relation"
  },
  {
    "id": "def-def-domain-range",
    "title": "Domain and Range",
    "section": "Definitions",
    "url": "/definitions/#def-domain-range",
    "path": "/definitions/",
    "anchor": "def-domain-range"
  },
  {
    "id": "def-def-functional-relation",
    "title": "Functional Relation",
    "section": "Definitions",
    "url": "/definitions/#def-functional-relation",
    "path": "/definitions/",
    "anchor": "def-functional-relation"
  },
  {
    "id": "def-def-function",
    "title": "Function",
    "section": "Definitions",
    "url": "/definitions/#def-function",
    "path": "/definitions/",
    "anchor": "def-function"
  },
  {
    "id": "def-def-composition",
    "title": "Composition",
    "section": "Definitions",
    "url": "/definitions/#def-composition",
    "path": "/definitions/",
    "anchor": "def-composition"
  },
  {
    "id": "def-def-diagonal-relation",
    "title": "Identity Function and Diagonal Relation",
    "section": "Definitions",
    "url": "/definitions/#def-diagonal-relation",
    "path": "/definitions/",
    "anchor": "def-diagonal-relation"
  },
  {
    "id": "def-def-inclusion",
    "title": "Inclusion",
    "section": "Definitions",
    "url": "/definitions/#def-inclusion",
    "path": "/definitions/",
    "anchor": "def-inclusion"
  },
  {
    "id": "def-def-injection",
    "title": "Injection",
    "section": "Definitions",
    "url": "/definitions/#def-injection",
    "path": "/definitions/",
    "anchor": "def-injection"
  },
  {
    "id": "def-def-surjection",
    "title": "Surjection",
    "section": "Definitions",
    "url": "/definitions/#def-surjection",
    "path": "/definitions/",
    "anchor": "def-surjection"
  },
  {
    "id": "def-def-bijection",
    "title": "Bijection and Invertibility",
    "section": "Definitions",
    "url": "/definitions/#def-bijection",
    "path": "/definitions/",
    "anchor": "def-bijection"
  },
  {
    "id": "def-def-image-preimage",
    "title": "Image and Preimage",
    "section": "Definitions",
    "url": "/definitions/#def-image-preimage",
    "path": "/definitions/",
    "anchor": "def-image-preimage"
  },
  {
    "id": "def-def-restriction",
    "title": "Restriction",
    "section": "Definitions",
    "url": "/definitions/#def-restriction",
    "path": "/definitions/",
    "anchor": "def-restriction"
  },
  {
    "id": "def-def-function-set",
    "title": "Function Sets B\u1d2c",
    "section": "Definitions",
    "url": "/definitions/#def-function-set",
    "path": "/definitions/",
    "anchor": "def-function-set"
  },
  {
    "id": "def-def-natural-integers",
    "title": "Natural Numbers and Integers (\u2115, \u2124)",
    "section": "Definitions",
    "url": "/definitions/#def-natural-integers",
    "path": "/definitions/",
    "anchor": "def-natural-integers"
  },
  {
    "id": "def-def-relation-properties",
    "title": "Relational Properties",
    "section": "Definitions",
    "url": "/definitions/#def-relation-properties",
    "path": "/definitions/",
    "anchor": "def-relation-properties"
  },
  {
    "id": "def-def-equivalence-relation",
    "title": "Equivalence Relation",
    "section": "Definitions",
    "url": "/definitions/#def-equivalence-relation",
    "path": "/definitions/",
    "anchor": "def-equivalence-relation"
  },
  {
    "id": "def-def-equivalence-class",
    "title": "Equivalence Class",
    "section": "Definitions",
    "url": "/definitions/#def-equivalence-class",
    "path": "/definitions/",
    "anchor": "def-equivalence-class"
  },
  {
    "id": "def-def-quotient-set",
    "title": "Quotient Set",
    "section": "Definitions",
    "url": "/definitions/#def-quotient-set",
    "path": "/definitions/",
    "anchor": "def-quotient-set"
  },
  {
    "id": "def-def-partition",
    "title": "Partition",
    "section": "Definitions",
    "url": "/definitions/#def-partition",
    "path": "/definitions/",
    "anchor": "def-partition"
  },
  {
    "id": "def-def-strict-weak-relations",
    "title": "Strict and Weak Relations",
    "section": "Definitions",
    "url": "/definitions/#def-strict-weak-relations",
    "path": "/definitions/",
    "anchor": "def-strict-weak-relations"
  },
  {
    "id": "def-def-poset",
    "title": "Poset and Total Order",
    "section": "Definitions",
    "url": "/definitions/#def-poset",
    "path": "/definitions/",
    "anchor": "def-poset"
  },
  {
    "id": "def-def-initial-segment",
    "title": "Initial Segment",
    "section": "Definitions",
    "url": "/definitions/#def-initial-segment",
    "path": "/definitions/",
    "anchor": "def-initial-segment"
  },
  {
    "id": "def-def-bounds-min-max",
    "title": "Bounds, Extremal Elements, and Min/Max",
    "section": "Definitions",
    "url": "/definitions/#def-bounds-min-max",
    "path": "/definitions/",
    "anchor": "def-bounds-min-max"
  },
  {
    "id": "def-def-completeness-axiom",
    "title": "The Completeness Axiom of \u211d",
    "section": "Definitions",
    "url": "/definitions/#def-completeness-axiom",
    "path": "/definitions/",
    "anchor": "def-completeness-axiom"
  },
  {
    "id": "def-def-chain",
    "title": "Chain",
    "section": "Definitions",
    "url": "/definitions/#def-chain",
    "path": "/definitions/",
    "anchor": "def-chain"
  },
  {
    "id": "def-def-well-ordering",
    "title": "Well-Ordering (Woset)",
    "section": "Definitions",
    "url": "/definitions/#def-well-ordering",
    "path": "/definitions/",
    "anchor": "def-well-ordering"
  },
  {
    "id": "def-def-successor-element",
    "title": "Successor Element",
    "section": "Definitions",
    "url": "/definitions/#def-successor-element",
    "path": "/definitions/",
    "anchor": "def-successor-element"
  },
  {
    "id": "def-def-well-founded",
    "title": "Well-Founded Relation",
    "section": "Definitions",
    "url": "/definitions/#def-well-founded",
    "path": "/definitions/",
    "anchor": "def-well-founded"
  },
  {
    "id": "def-def-order-boundedness",
    "title": "Order Boundedness, Cofinality, and Density",
    "section": "Definitions",
    "url": "/definitions/#def-order-boundedness",
    "path": "/definitions/",
    "anchor": "def-order-boundedness"
  },
  {
    "id": "def-def-lattice",
    "title": "Lattice",
    "section": "Definitions",
    "url": "/definitions/#def-lattice",
    "path": "/definitions/",
    "anchor": "def-lattice"
  },
  {
    "id": "def-def-complete-lattice",
    "title": "Complete Lattice",
    "section": "Definitions",
    "url": "/definitions/#def-complete-lattice",
    "path": "/definitions/",
    "anchor": "def-complete-lattice"
  },
  {
    "id": "def-def-monotone-function",
    "title": "Monotone Function",
    "section": "Definitions",
    "url": "/definitions/#def-monotone-function",
    "path": "/definitions/",
    "anchor": "def-monotone-function"
  },
  {
    "id": "def-def-fixed-point",
    "title": "Fixed Point and Least Fixed Point (\u03bcf)",
    "section": "Definitions",
    "url": "/definitions/#def-fixed-point",
    "path": "/definitions/",
    "anchor": "def-fixed-point"
  },
  {
    "id": "def-def-alphabet",
    "title": "Alphabet",
    "section": "Definitions",
    "url": "/definitions/#def-alphabet",
    "path": "/definitions/",
    "anchor": "def-alphabet"
  },
  {
    "id": "def-def-strings",
    "title": "Strings (\u03a3*)",
    "section": "Definitions",
    "url": "/definitions/#def-strings",
    "path": "/definitions/",
    "anchor": "def-strings"
  },
  {
    "id": "def-def-concatenation",
    "title": "Concatenation",
    "section": "Definitions",
    "url": "/definitions/#def-concatenation",
    "path": "/definitions/",
    "anchor": "def-concatenation"
  },
  {
    "id": "def-def-language",
    "title": "Language",
    "section": "Definitions",
    "url": "/definitions/#def-language",
    "path": "/definitions/",
    "anchor": "def-language"
  },
  {
    "id": "def-def-string-initial-segment",
    "title": "Initial Segment of a String",
    "section": "Definitions",
    "url": "/definitions/#def-string-initial-segment",
    "path": "/definitions/",
    "anchor": "def-string-initial-segment"
  },
  {
    "id": "def-def-pc-syntax",
    "title": "Variables, Connectives, and Formulae (Frm)",
    "section": "Definitions",
    "url": "/definitions/#def-pc-syntax",
    "path": "/definitions/",
    "anchor": "def-pc-syntax"
  },
  {
    "id": "def-def-pc-complexity",
    "title": "Formula Complexity",
    "section": "Definitions",
    "url": "/definitions/#def-pc-complexity",
    "path": "/definitions/",
    "anchor": "def-pc-complexity"
  },
  {
    "id": "def-def-pc-valuation",
    "title": "Valuation and Extended Interpretation",
    "section": "Definitions",
    "url": "/definitions/#def-pc-valuation",
    "path": "/definitions/",
    "anchor": "def-pc-valuation"
  },
  {
    "id": "def-def-pc-equivalence",
    "title": "Logical Equivalence",
    "section": "Definitions",
    "url": "/definitions/#def-pc-equivalence",
    "path": "/definitions/",
    "anchor": "def-pc-equivalence"
  },
  {
    "id": "def-def-pc-tautology-contradiction",
    "title": "Tautology and Contradiction",
    "section": "Definitions",
    "url": "/definitions/#def-pc-tautology-contradiction",
    "path": "/definitions/",
    "anchor": "def-pc-tautology-contradiction"
  },
  {
    "id": "def-def-pc-satisfiability-formula",
    "title": "Formula Satisfiability (PC)",
    "section": "Definitions",
    "url": "/definitions/#def-pc-satisfiability-formula",
    "path": "/definitions/",
    "anchor": "def-pc-satisfiability-formula"
  },
  {
    "id": "def-def-pc-satisfiability-set",
    "title": "Set Satisfiability (PC)",
    "section": "Definitions",
    "url": "/definitions/#def-pc-satisfiability-set",
    "path": "/definitions/",
    "anchor": "def-pc-satisfiability-set"
  },
  {
    "id": "def-def-pc-entailment",
    "title": "Entailment (PC)",
    "section": "Definitions",
    "url": "/definitions/#def-pc-entailment",
    "path": "/definitions/",
    "anchor": "def-pc-entailment"
  },
  {
    "id": "def-def-pc-functional-completeness",
    "title": "Functional Completeness",
    "section": "Definitions",
    "url": "/definitions/#def-pc-functional-completeness",
    "path": "/definitions/",
    "anchor": "def-pc-functional-completeness"
  },
  {
    "id": "def-def-proof-system",
    "title": "Proof System",
    "section": "Definitions",
    "url": "/definitions/#def-proof-system",
    "path": "/definitions/",
    "anchor": "def-proof-system"
  },
  {
    "id": "def-def-formal-proof",
    "title": "Formal Proof",
    "section": "Definitions",
    "url": "/definitions/#def-formal-proof",
    "path": "/definitions/",
    "anchor": "def-formal-proof"
  },
  {
    "id": "def-def-provability",
    "title": "Syntactic Provability (\u22a2) and Theorems",
    "section": "Definitions",
    "url": "/definitions/#def-provability",
    "path": "/definitions/",
    "anchor": "def-provability"
  },
  {
    "id": "def-def-modus-ponens",
    "title": "Modus Ponens",
    "section": "Definitions",
    "url": "/definitions/#def-modus-ponens",
    "path": "/definitions/",
    "anchor": "def-modus-ponens"
  },
  {
    "id": "def-def-tautology-system",
    "title": "Tautology System",
    "section": "Definitions",
    "url": "/definitions/#def-tautology-system",
    "path": "/definitions/",
    "anchor": "def-tautology-system"
  },
  {
    "id": "def-def-hilbert-system",
    "title": "Hilbert System",
    "section": "Definitions",
    "url": "/definitions/#def-hilbert-system",
    "path": "/definitions/",
    "anchor": "def-hilbert-system"
  },
  {
    "id": "def-def-consistency",
    "title": "Consistency and Inconsistency",
    "section": "Definitions",
    "url": "/definitions/#def-consistency",
    "path": "/definitions/",
    "anchor": "def-consistency"
  },
  {
    "id": "def-def-system-soundness-completeness",
    "title": "Soundness and Completeness of a Proof System",
    "section": "Definitions",
    "url": "/definitions/#def-system-soundness-completeness",
    "path": "/definitions/",
    "anchor": "def-system-soundness-completeness"
  },
  {
    "id": "def-def-proof-tree",
    "title": "Proof Trees and Discharging",
    "section": "Definitions",
    "url": "/definitions/#def-proof-tree",
    "path": "/definitions/",
    "anchor": "def-proof-tree"
  },
  {
    "id": "def-def-nd-derivation",
    "title": "Natural Deduction Derivation",
    "section": "Definitions",
    "url": "/definitions/#def-nd-derivation",
    "path": "/definitions/",
    "anchor": "def-nd-derivation"
  },
  {
    "id": "def-def-fol-signature",
    "title": "Signature (\u03c3)",
    "section": "Definitions",
    "url": "/definitions/#def-fol-signature",
    "path": "/definitions/",
    "anchor": "def-fol-signature"
  },
  {
    "id": "def-def-fol-alphabet",
    "title": "First-Order Alphabet",
    "section": "Definitions",
    "url": "/definitions/#def-fol-alphabet",
    "path": "/definitions/",
    "anchor": "def-fol-alphabet"
  },
  {
    "id": "def-def-fol-terms",
    "title": "Terms (Trm)",
    "section": "Definitions",
    "url": "/definitions/#def-fol-terms",
    "path": "/definitions/",
    "anchor": "def-fol-terms"
  },
  {
    "id": "def-def-fol-formulae",
    "title": "Atomic and Compound Formulae (Frm)",
    "section": "Definitions",
    "url": "/definitions/#def-fol-formulae",
    "path": "/definitions/",
    "anchor": "def-fol-formulae"
  },
  {
    "id": "def-def-fol-weight",
    "title": "Symbol Weight and Unique Readability",
    "section": "Definitions",
    "url": "/definitions/#def-fol-weight",
    "path": "/definitions/",
    "anchor": "def-fol-weight"
  },
  {
    "id": "def-def-fol-free-variables",
    "title": "Free Variables (FV)",
    "section": "Definitions",
    "url": "/definitions/#def-fol-free-variables",
    "path": "/definitions/",
    "anchor": "def-fol-free-variables"
  },
  {
    "id": "def-def-fol-abbreviations",
    "title": "Precedence and Abbreviations",
    "section": "Definitions",
    "url": "/definitions/#def-fol-abbreviations",
    "path": "/definitions/",
    "anchor": "def-fol-abbreviations"
  },
  {
    "id": "def-def-fol-functional-formula",
    "title": "Functional Formula",
    "section": "Definitions",
    "url": "/definitions/#def-fol-functional-formula",
    "path": "/definitions/",
    "anchor": "def-fol-functional-formula"
  },
  {
    "id": "def-def-fol-structure",
    "title": "Structure (\ud835\udd04)",
    "section": "Definitions",
    "url": "/definitions/#def-fol-structure",
    "path": "/definitions/",
    "anchor": "def-fol-structure"
  },
  {
    "id": "def-def-fol-assignment",
    "title": "Variable Assignment",
    "section": "Definitions",
    "url": "/definitions/#def-fol-assignment",
    "path": "/definitions/",
    "anchor": "def-fol-assignment"
  },
  {
    "id": "def-def-fol-valuation-function",
    "title": "Term Valuation Function (s\u0304)",
    "section": "Definitions",
    "url": "/definitions/#def-fol-valuation-function",
    "path": "/definitions/",
    "anchor": "def-fol-valuation-function"
  },
  {
    "id": "def-def-fol-modified-assignment",
    "title": "Modified Assignment",
    "section": "Definitions",
    "url": "/definitions/#def-fol-modified-assignment",
    "path": "/definitions/",
    "anchor": "def-fol-modified-assignment"
  },
  {
    "id": "def-def-fol-satisfaction",
    "title": "Satisfaction Relation (\u22a8)",
    "section": "Definitions",
    "url": "/definitions/#def-fol-satisfaction",
    "path": "/definitions/",
    "anchor": "def-fol-satisfaction"
  },
  {
    "id": "def-def-sentence",
    "title": "Sentence",
    "section": "Definitions",
    "url": "/definitions/#def-sentence",
    "path": "/definitions/",
    "anchor": "def-sentence"
  },
  {
    "id": "def-def-truth-structure",
    "title": "Truth in a Structure",
    "section": "Definitions",
    "url": "/definitions/#def-truth-structure",
    "path": "/definitions/",
    "anchor": "def-truth-structure"
  },
  {
    "id": "def-def-fol-validity",
    "title": "First-Order Satisfiability, Unsatisfiability, Validity, and Invalidity",
    "section": "Definitions",
    "url": "/definitions/#def-fol-validity",
    "path": "/definitions/",
    "anchor": "def-fol-validity"
  },
  {
    "id": "def-def-model-theory",
    "title": "Model of a Set of Formulae",
    "section": "Definitions",
    "url": "/definitions/#def-model-theory",
    "path": "/definitions/",
    "anchor": "def-model-theory"
  },
  {
    "id": "def-def-fol-entailment",
    "title": "First-Order Entailment",
    "section": "Definitions",
    "url": "/definitions/#def-fol-entailment",
    "path": "/definitions/",
    "anchor": "def-fol-entailment"
  },
  {
    "id": "def-def-fol-set-satisfiability",
    "title": "Set Satisfiability (FOL)",
    "section": "Definitions",
    "url": "/definitions/#def-fol-set-satisfiability",
    "path": "/definitions/",
    "anchor": "def-fol-set-satisfiability"
  },
  {
    "id": "def-def-finitely-satisfiable",
    "title": "Finite Satisfiability",
    "section": "Definitions",
    "url": "/definitions/#def-finitely-satisfiable",
    "path": "/definitions/",
    "anchor": "def-finitely-satisfiable"
  },
  {
    "id": "def-def-henkin-property",
    "title": "Henkin Witness Property",
    "section": "Definitions",
    "url": "/definitions/#def-henkin-property",
    "path": "/definitions/",
    "anchor": "def-henkin-property"
  },
  {
    "id": "def-def-maximally-consistent",
    "title": "Maximal Consistency",
    "section": "Definitions",
    "url": "/definitions/#def-maximally-consistent",
    "path": "/definitions/",
    "anchor": "def-maximally-consistent"
  },
  {
    "id": "def-def-term-verifier",
    "title": "Canonical Term Structure (\u0393-Verifier)",
    "section": "Definitions",
    "url": "/definitions/#def-term-verifier",
    "path": "/definitions/",
    "anchor": "def-term-verifier"
  },
  {
    "id": "def-def-quotient-model",
    "title": "Quotient Model (\u0393-Model)",
    "section": "Definitions",
    "url": "/definitions/#def-quotient-model",
    "path": "/definitions/",
    "anchor": "def-quotient-model"
  },
  {
    "id": "def-def-set-theory-language",
    "title": "Language of Set Theory",
    "section": "Definitions",
    "url": "/definitions/#def-set-theory-language",
    "path": "/definitions/",
    "anchor": "def-set-theory-language"
  },
  {
    "id": "def-def-ordered-pair-kuratowski",
    "title": "Kuratowski Ordered Pair",
    "section": "Definitions",
    "url": "/definitions/#def-ordered-pair-kuratowski",
    "path": "/definitions/",
    "anchor": "def-ordered-pair-kuratowski"
  },
  {
    "id": "def-def-successor-set",
    "title": "Successor Set",
    "section": "Definitions",
    "url": "/definitions/#def-successor-set",
    "path": "/definitions/",
    "anchor": "def-successor-set"
  },
  {
    "id": "def-def-z-minus-zf-minus",
    "title": "Z\u207b and ZF\u207b",
    "section": "Definitions",
    "url": "/definitions/#def-z-minus-zf-minus",
    "path": "/definitions/",
    "anchor": "def-z-minus-zf-minus"
  },
  {
    "id": "def-def-omega-natural-numbers",
    "title": "Natural Numbers (\u03c9, \u2115)",
    "section": "Definitions",
    "url": "/definitions/#def-omega-natural-numbers",
    "path": "/definitions/",
    "anchor": "def-omega-natural-numbers"
  },
  {
    "id": "def-def-transitive-set",
    "title": "Transitive Set",
    "section": "Definitions",
    "url": "/definitions/#def-transitive-set",
    "path": "/definitions/",
    "anchor": "def-transitive-set"
  },
  {
    "id": "def-def-class-proper-class",
    "title": "Classes and The Universe (V)",
    "section": "Definitions",
    "url": "/definitions/#def-class-proper-class",
    "path": "/definitions/",
    "anchor": "def-class-proper-class"
  },
  {
    "id": "def-def-order-isomorphism",
    "title": "Order Isomorphism and Automorphism",
    "section": "Definitions",
    "url": "/definitions/#def-order-isomorphism",
    "path": "/definitions/",
    "anchor": "def-order-isomorphism"
  },
  {
    "id": "def-def-initial-segment-embedding",
    "title": "Initial Segment Embedding (\u2291)",
    "section": "Definitions",
    "url": "/definitions/#def-initial-segment-embedding",
    "path": "/definitions/",
    "anchor": "def-initial-segment-embedding"
  },
  {
    "id": "def-def-ordinal-number",
    "title": "Ordinal Number (Ord)",
    "section": "Definitions",
    "url": "/definitions/#def-ordinal-number",
    "path": "/definitions/",
    "anchor": "def-ordinal-number"
  },
  {
    "id": "def-def-ordinal-sup-inf",
    "title": "Ordinal Supremum and Infimum (sup, inf)",
    "section": "Definitions",
    "url": "/definitions/#def-ordinal-sup-inf",
    "path": "/definitions/",
    "anchor": "def-ordinal-sup-inf"
  },
  {
    "id": "def-def-successor-limit-ordinal",
    "title": "Successor and Limit Ordinals",
    "section": "Definitions",
    "url": "/definitions/#def-successor-limit-ordinal",
    "path": "/definitions/",
    "anchor": "def-successor-limit-ordinal"
  },
  {
    "id": "def-def-transfinite-recursion",
    "title": "Transfinite Recursion",
    "section": "Definitions",
    "url": "/definitions/#def-transfinite-recursion",
    "path": "/definitions/",
    "anchor": "def-transfinite-recursion"
  },
  {
    "id": "def-def-ordinal-sequence",
    "title": "Ordinal Sequences and Limits",
    "section": "Definitions",
    "url": "/definitions/#def-ordinal-sequence",
    "path": "/definitions/",
    "anchor": "def-ordinal-sequence"
  },
  {
    "id": "def-def-axiom-choice",
    "title": "Axiom of Choice (AC) and ZFC\u207b",
    "section": "Definitions",
    "url": "/definitions/#def-axiom-choice",
    "path": "/definitions/",
    "anchor": "def-axiom-choice"
  },
  {
    "id": "def-def-cardinality-of-set",
    "title": "Cardinality of a Set",
    "section": "Definitions",
    "url": "/definitions/#def-cardinality-of-set",
    "path": "/definitions/",
    "anchor": "def-cardinality-of-set"
  },
  {
    "id": "def-def-cardinal-number",
    "title": "Cardinal Number",
    "section": "Definitions",
    "url": "/definitions/#def-cardinal-number",
    "path": "/definitions/",
    "anchor": "def-cardinal-number"
  },
  {
    "id": "def-def-cardinal-ordering",
    "title": "Cardinal Ordering (\u2264)",
    "section": "Definitions",
    "url": "/definitions/#def-cardinal-ordering",
    "path": "/definitions/",
    "anchor": "def-cardinal-ordering"
  },
  {
    "id": "def-def-cardinal-arithmetic",
    "title": "Cardinal Arithmetic",
    "section": "Definitions",
    "url": "/definitions/#def-cardinal-arithmetic",
    "path": "/definitions/",
    "anchor": "def-cardinal-arithmetic"
  },
  {
    "id": "def-def-decidable-set",
    "title": "Decidable Set",
    "section": "Definitions",
    "url": "/definitions/#def-decidable-set",
    "path": "/definitions/",
    "anchor": "def-decidable-set"
  },
  {
    "id": "def-def-semidecidable-set",
    "title": "Semidecidable Set",
    "section": "Definitions",
    "url": "/definitions/#def-semidecidable-set",
    "path": "/definitions/",
    "anchor": "def-semidecidable-set"
  },
  {
    "id": "def-def-enumerator",
    "title": "Enumerator",
    "section": "Definitions",
    "url": "/definitions/#def-enumerator",
    "path": "/definitions/",
    "anchor": "def-enumerator"
  }
];

  function injectSearchItems() {
    const ninja = document.querySelector('ninja-keys');
    if (!ninja) return;

    if (Array.isArray(ninja.data)) {
      if (!ninja.data.some(item => item.id && item.id.startsWith('thm-'))) {
        const formatted = customItems.map(item => ({
          id: item.id,
          title: item.title,
          section: item.section,
          handler: () => {
            ninja.close();
            const currentPath = window.location.pathname.replace(/\/index\.html$/, '/');
            if (currentPath.endsWith(item.path)) {
              const target = document.getElementById(item.anchor);
              if (target) {
                target.scrollIntoView({ behavior: 'smooth', block: 'start' });
                history.pushState(null, null, '#' + item.anchor);
              }
            } else {
              window.location.href = item.url;
            }
          }
        }));
        ninja.data = [...ninja.data, ...formatted];
      }
    } else {
      setTimeout(injectSearchItems, 100);
    }
  }

  if (document.readyState === 'loading') {
    document.addEventListener('DOMContentLoaded', injectSearchItems);
  } else {
    injectSearchItems();
  }
})();
