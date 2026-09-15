---
layout: page
title: Theorems & Proofs
permalink: /theorems/
description: A curated reference library of formal mathematical proofs.
nav: true
nav_order: 3
---

Welcome to the central reference library of proofs. This archive maintains complete, modular proofs for theorems cited across the blog and lecture notes.

---

### Table of Contents
* **Lattices & Fixed Points:**
  * [The Knaster–Tarski Fixed-Point Theorem](#knaster-tarski)
  * [The General Induction Principle](#general-induction)
* **Formal Languages & Propositional Logic:**
  * [Principle of Induction on Strings](#induction-strings)
  * [Principle of Induction on Formulae](#induction-formulas)
  * [Finiteness of Variable Occurrences](#finiteness-variables)
* **Proof Theory:**
  * [The Propositional Deduction Theorem](#deduction-theorem)
  * [Ex Falso Quodlibet](#ex-falso)
  * [Deduction in the Tautology System](#tautology-system)
* **First-Order Semantics & Metatheory:**
  * [Free Variable Agreement Theorem](#free-variables)
  * [Soundness of the Tautology System](#tautology-soundness)
  * [The Propositional Compactness Theorem](#compactness-theorem)
  * [Completeness of the Tautology System](#tautology-completeness)
  * [Consistency under Constant Extension](#constant-extension)
  * [The Henkin Witness Construction](#henkin-constants)
  * [Lindenbaum's Maximal Extension Lemma](#lindenbaum-lemma)
  * [The Fundamental Truth Lemma for Term Structures](#term-model-truth)
  * [Gödel's Completeness Theorem](#godel-completeness)
* **Axiomatic Set Theory & Ordinals:**
  * [Inconsistency of Naive Set Theory (Russell's Paradox)](#russell-paradox)
  * [Principle of Induction on ω](#induction-omega)
  * [Principle of Well-Ordered Induction](#well-ordered-induction)
  * [Uniqueness of Order Automorphisms on Wosets](#woset-automorphism)
  * [Wosets and Initial Segments](#woset-initial-segment)
  * [Comparability of Well-Ordered Sets](#woset-comparability)
  * [Strict Inclusion and Membership of Ordinals](#ordinal-subset-in)
  * [Extended Burali-Forti Theorem](#burali-forti)
  * [Isomorphism of Well-Orderings to Unique Ordinals](#woset-to-ordinal)
* **The Axiom of Choice Cycle:**
  * [Hausdorff's Maximal Principle (The Tower Construction)](#hausdorff-maximal-principle)
  * [Zorn's Lemma](#zorns-lemma)
  * [Zermelo's Well-Ordering Theorem](#well-ordering-theorem)
  * [Equivalence: WO implies AC](#wo-implies-ac)
* **Cardinality & The Continuum:**
  * [The Schröder–Bernstein Theorem](#schroder-bernstein)
  * [Cantor's Theorem on the Power Set](#cantors-theorem)
  * [Hessenberg's Theorem on Cardinal Arithmetic](#hessenbergs-theorem)
  * [Existence of Cardinal Numbers](#cardinal-existence)
  * [Equinumerosity of ℝ and 𝒫(ℕ)](#reals-and-power-set)
  * [The Dimension Paradox: ℝ ~ ℝ²](#real-plane-dimension)
  * [Scale Invariance: (0, 1) ~ ℝ](#real-interval-bijection)
* **Real Analysis:**
  * [The Archimedean Property of ℝ](#archimedean-property)
  * [The Density of ℚ in ℝ](#density-of-rationals)
* **Theory of Computation:**
  * [Semidecidability and Dovetailing Enumeration](#semidecidability-enumeration)
  * [Kleene's Post Theorem on Decidability](#kleene-theorem)
  * [Closure Properties of Semidecidable Sets](#semidecidable-closure)

---

### Lattices & Fixed Points

<h4 id="knaster-tarski">The Knaster–Tarski Fixed-Point Theorem</h4>

> **Theorem:** Let $$(L, \land, \lor)$$ be a [complete lattice](/definitions/#def-complete-lattice) and $$f \colon L \longrightarrow L$$ be [monotone](/definitions/#def-monotone-function). Then $$f$$ has a [least fixed point](/definitions/#def-fixed-point) $$\mu f$$.

<details class="border rounded p-3 my-3" markdown="1">
<summary style="cursor: pointer;"><b>Proof</b> <span class="text-muted font-italic">(click to reveal)</span></summary>

{% include proofs/knaster_tarski.md %}

</details>

---

<h4 id="general-induction">The General Induction Principle</h4>

> **Theorem:** Let $$X$$ be a set and $$F \colon \mathcal{P}(X) \longrightarrow \mathcal{P}(X)$$ be [monotone](/definitions/#def-monotone-function). Let $$S^* := \mu F$$ be its [least fixed point](/definitions/#def-fixed-point). Then for any $$T \subseteq X$$, $$F(T) \subseteq T \implies S^* \subseteq T$$.

<details class="border rounded p-3 my-3" markdown="1">
<summary style="cursor: pointer;"><b>Proof</b> <span class="text-muted font-italic">(click to reveal)</span></summary>

{% include proofs/general_induction.md %}

</details>

---

### Formal Languages & Propositional Logic

<h4 id="induction-strings">Principle of Induction on Strings</h4>

> **Theorem:** Let $$\Pi$$ be a property of [strings](/definitions/#def-strings) over [alphabet](/definitions/#def-alphabet) $$\Sigma$$ such that:
> 1. $$\Pi$$ holds for $$\varepsilon$$.
> 2. If $$\Pi$$ holds for $$\sigma$$, then for any $$s \in \Sigma$$, $$\Pi$$ holds for $$\sigma s$$.
> 
> Then $$\Pi$$ holds for all strings over $$\Sigma^*$$.

<details class="border rounded p-3 my-3" markdown="1">
<summary style="cursor: pointer;"><b>Proof</b> <span class="text-muted font-italic">(click to reveal)</span></summary>

{% include proofs/induction_on_strings.md %}

</details>

---

<h4 id="induction-formulas">Principle of Induction on Propositional Formulae</h4>

> **Theorem:** Let $$\Pi$$ be a property of propositional [formulae](/definitions/#def-pc-syntax) such that:
> 1. $$\Pi$$ holds for all variables.
> 2. If $$\Pi$$ holds for $$\varphi_1, \dots, \varphi_n$$, then $$\Pi$$ holds for $$c_k^n(\varphi_1, \dots, \varphi_n)$$ for any connective $$c_k^n$$.
> 
> Then $$\Pi$$ holds for all propositional formulae in $$\textbf{Frm}$$.

<details class="border rounded p-3 my-3" markdown="1">
<summary style="cursor: pointer;"><b>Proof</b> <span class="text-muted font-italic">(click to reveal)</span></summary>

{% include proofs/induction_on_formulas.md %}

</details>

---

<h4 id="finiteness-variables">Finiteness of Variable Occurrences</h4>

> **Theorem:** For every [formula](/definitions/#def-pc-syntax) $$\varphi \in \textbf{Frm}$$, the set of [variables](/definitions/#def-pc-syntax) $$V(\varphi)$$ occurring in $$\varphi$$ is finite.

<details class="border rounded p-3 my-3" markdown="1">
<summary style="cursor: pointer;"><b>Proof</b> <span class="text-muted font-italic">(click to reveal)</span></summary>

{% include proofs/finiteness_variable_occurrences.md %}

</details>

---

### Proof Theory

<h4 id="deduction-theorem">The Propositional Deduction Theorem</h4>

> **Theorem:** In a propositional [proof system](/definitions/#def-proof-system), $$\Gamma \cup \{\phi\} \vdash \psi \iff \Gamma \vdash \phi \rightarrow \psi$$.

<details class="border rounded p-3 my-3" markdown="1">
<summary style="cursor: pointer;"><b>Proof</b> <span class="text-muted font-italic">(click to reveal)</span></summary>

{% include proofs/deduction_theorem.md %}

</details>

---

<h4 id="ex-falso">Ex Falso Quodlibet</h4>

> **Theorem:** $$\{\phi, \neg \phi\} \vdash \psi$$.

<details class="border rounded p-3 my-3" markdown="1">
<summary style="cursor: pointer;"><b>Proof</b> <span class="text-muted font-italic">(click to reveal)</span></summary>

{% include proofs/ex_falso_quodlibet.md %}

</details>

---

<h4 id="tautology-system">Deduction in the Tautology System</h4>

> **Theorem:** $$\{\phi, \psi, (\phi \land \psi) \rightarrow \xi\} \vdash \xi$$.

<details class="border rounded p-3 my-3" markdown="1">
<summary style="cursor: pointer;"><b>Proof</b> <span class="text-muted font-italic">(click to reveal)</span></summary>

{% include proofs/tautology_system_example.md %}

</details>

---

### First-Order Semantics & Metatheory

<h4 id="free-variables">Free Variable Agreement Theorem</h4>

> **Theorem:** Let $$\varphi$$ be a formula. If two [variable assignments](/definitions/#def-fol-assignment) $$s$$ and $$r$$ agree on all [free variables](/definitions/#def-fol-free-variables) of $$\varphi$$, then $$\mathfrak{A} \models \varphi[s] \iff \mathfrak{A} \models \varphi[r]$$.

<details class="border rounded p-3 my-3" markdown="1">
<summary style="cursor: pointer;"><b>Proof</b> <span class="text-muted font-italic">(click to reveal)</span></summary>

{% include proofs/free_variables_agreement.md %}

</details>

---

<h4 id="tautology-soundness">Soundness of the Tautology System</h4>

> **Theorem:** In the [tautology system](/definitions/#def-tautology-system), $$\Sigma \vdash \phi \implies \Sigma \models \phi$$.

<details class="border rounded p-3 my-3" markdown="1">
<summary style="cursor: pointer;"><b>Proof</b> <span class="text-muted font-italic">(click to reveal)</span></summary>

{% include proofs/tautology_soundness.md %}

</details>

---

<h4 id="compactness-theorem">The Propositional Compactness Theorem</h4>

> **Theorem:** A set of formulae $$\Sigma$$ is [satisfiable](/definitions/#def-pc-satisfiability-set) if and only if it is [finitely satisfiable](/definitions/#def-finitely-satisfiable).

<details class="border rounded p-3 my-3" markdown="1">
<summary style="cursor: pointer;"><b>Proof</b> <span class="text-muted font-italic">(click to reveal)</span></summary>

{% include proofs/compactness_theorem.md %}

</details>

---

<h4 id="tautology-completeness">Completeness of the Tautology System</h4>

> **Theorem:** In the tautology system, $$\Sigma \models \phi \implies \Sigma \vdash \phi$$.

<details class="border rounded p-3 my-3" markdown="1">
<summary style="cursor: pointer;"><b>Proof</b> <span class="text-muted font-italic">(click to reveal)</span></summary>

{% include proofs/tautology_completeness.md %}

</details>

---

<h4 id="constant-extension">Consistency under Constant Extension</h4>

> **Theorem:** Let $$\Gamma$$ be [consistent](/definitions/#def-consistency) over language $$\mathscr{L}$$. If $$c_0, c_1, \dots \notin \mathscr{L}$$, then $$\Gamma$$ is consistent over $$\mathscr{L} \cup \{c_0, c_1, \dots\}$$.

<details class="border rounded p-3 my-3" markdown="1">
<summary style="cursor: pointer;"><b>Proof</b> <span class="text-muted font-italic">(click to reveal)</span></summary>

{% include proofs/constant_extension_consistency.md %}

</details>

---

<h4 id="henkin-constants">The Henkin Witness Construction</h4>

> **Theorem:** Any consistent set $$\Gamma$$ can be extended to a consistent set $$\Gamma \cup \{\neg \forall x \phi_n(x) \rightarrow \neg \phi_n(c_{k_n}) \mid n \in \mathbb{N}\}$$, where $$c_{k_n}$$ does not occur in any $$\phi_m$$ for $$m < n$$.

<details class="border rounded p-3 my-3" markdown="1">
<summary style="cursor: pointer;"><b>Proof</b> <span class="text-muted font-italic">(click to reveal)</span></summary>

{% include proofs/henkin_constants_consistency.md %}

</details>

---

<h4 id="lindenbaum-lemma">Lindenbaum's Maximal Extension Lemma</h4>

> **Theorem:** Every [consistent](/definitions/#def-consistency) set $$\Gamma$$ can be extended to a [maximally consistent](/definitions/#def-maximally-consistent) set $$\Delta$$.

<details class="border rounded p-3 my-3" markdown="1">
<summary style="cursor: pointer;"><b>Proof</b> <span class="text-muted font-italic">(click to reveal)</span></summary>

{% include proofs/lindenbaum_lemma.md %}

</details>

---

<h4 id="term-model-truth">The Fundamental Truth Lemma for Term Structures</h4>

> **Theorem:** Let $$\mathfrak{A}$$ be a [canonical term structure](/definitions/#def-term-verifier) over maximal consistent Henkin set $$\Delta$$. Then $$\mathfrak{A} \models \phi^* \iff \phi \in \Delta$$.

<details class="border rounded p-3 my-3" markdown="1">
<summary style="cursor: pointer;"><b>Proof</b> <span class="text-muted font-italic">(click to reveal)</span></summary>

{% include proofs/term_model_truth.md %}

</details>

---

<h4 id="godel-completeness">Gödel's Completeness Theorem</h4>

> **Theorem:** If $$\Gamma$$ is [consistent](/definitions/#def-consistency), then $$\Gamma$$ has a [model](/definitions/#def-model-theory). Consequently, $$\Gamma \models \phi \implies \Gamma \vdash \phi$$.

<details class="border rounded p-3 my-3" markdown="1">
<summary style="cursor: pointer;"><b>Proof</b> <span class="text-muted font-italic">(click to reveal)</span></summary>

{% include proofs/godel_completeness.md %}

</details>

---

### Axiomatic Set Theory & Ordinals

<h4 id="russell-paradox">Inconsistency of Naive Set Theory (Russell's Paradox)</h4>

> **Theorem:** Naive Set Theory is inconsistent and has no model.

<details class="border rounded p-3 my-3" markdown="1">
<summary style="cursor: pointer;"><b>Proof</b> <span class="text-muted font-italic">(click to reveal)</span></summary>

{% include proofs/naive_set_theory_inconsistent.md %}

</details>

---

<h4 id="induction-omega">Principle of Induction on ω</h4>

> **Theorem:** Let $$S \subseteq \omega$$. If $$0 \in S$$ and $$\forall n \ (n \in S \rightarrow n + 1 \in S)$$, then $$S = \omega$$.

<details class="border rounded p-3 my-3" markdown="1">
<summary style="cursor: pointer;"><b>Proof</b> <span class="text-muted font-italic">(click to reveal)</span></summary>

{% include proofs/induction_on_omega.md %}

</details>

---

<h4 id="well-ordered-induction">Principle of Well-Ordered Induction</h4>

> **Theorem:** Let $$(X, \le)$$ be a [well-ordered set](/definitions/#def-well-ordering) and let $$\Pi$$ be a property. If $$\Pi(a)$$ holds whenever $$\Pi(y)$$ holds for all $$y < a$$, then $$\Pi(x)$$ holds for all $$x \in X$$.

<details class="border rounded p-3 my-3" markdown="1">
<summary style="cursor: pointer;"><b>Proof</b> <span class="text-muted font-italic">(click to reveal)</span></summary>

{% include proofs/well_ordered_induction.md %}

</details>

---

<h4 id="woset-automorphism">Uniqueness of Order Automorphisms on Wosets</h4>

> **Theorem:** Let $$(X, \le)$$ be a [well-ordered set](/definitions/#def-well-ordering) and $$f \colon X \longrightarrow X$$ an [order automorphism](/definitions/#def-order-isomorphism). Then $$\forall x \in X \ x \le f(x)$$. Consequently, the only order automorphism of $$(X, \le)$$ is $$\operatorname{id}_X$$.

<details class="border rounded p-3 my-3" markdown="1">
<summary style="cursor: pointer;"><b>Proof</b> <span class="text-muted font-italic">(click to reveal)</span></summary>

{% include proofs/order_automorphism_identity.md %}

</details>

---

<h4 id="woset-initial-segment">Wosets and Initial Segments</h4>

> **Theorem:** A [well-ordered set](/definitions/#def-well-ordering) $$(X, \le)$$ is never order-isomorphic to any of its proper [initial segments](/definitions/#def-initial-segment) $$X_a$$.

<details class="border rounded p-3 my-3" markdown="1">
<summary style="cursor: pointer;"><b>Proof</b> <span class="text-muted font-italic">(click to reveal)</span></summary>

{% include proofs/woset_initial_segment.md %}

</details>

---

<h4 id="woset-comparability">Comparability of Well-Ordered Sets</h4>

> **Theorem:** Let $$\mathrm{X} := (X, \le)$$ and $$\mathrm{Y} := (Y, \hat{\le})$$ be [well-ordered sets](/definitions/#def-well-ordering). Then exactly one of the following holds:
> 1. $$\mathrm{X} \sqsubset \mathrm{Y}$$,
> 2. $$\mathrm{X} \cong_{\operatorname{Ord}} \mathrm{Y}$$,
> 3. $$\mathrm{Y} \sqsubset \mathrm{X}$$.

<details class="border rounded p-3 my-3" markdown="1">
<summary style="cursor: pointer;"><b>Proof</b> <span class="text-muted font-italic">(click to reveal)</span></summary>

{% include proofs/woset_comparability.md %}

</details>

---

<h4 id="ordinal-subset-in">Strict Inclusion and Membership of Ordinals</h4>

> **Theorem:** Let $$\alpha, \beta$$ be [ordinals](/definitions/#def-ordinal-number). Then $$\alpha \subset \beta \implies \alpha \in \beta$$.

<details class="border rounded p-3 my-3" markdown="1">
<summary style="cursor: pointer;"><b>Proof</b> <span class="text-muted font-italic">(click to reveal)</span></summary>

{% include proofs/ordinal_subset_in.md %}

</details>

---

<h4 id="burali-forti">Extended Burali-Forti Theorem</h4>

> **Theorem:** Let $$A$$ be a subclass of $$\mathbf{Ord}$$ that is [not bounded above](/definitions/#def-order-boundedness) in $$\mathbf{Ord}$$. Then $$A$$ is a [proper class](/definitions/#def-class-proper-class).

<details class="border rounded p-3 my-3" markdown="1">
<summary style="cursor: pointer;"><b>Proof</b> <span class="text-muted font-italic">(click to reveal)</span></summary>

{% include proofs/extended_burali_forti.md %}

</details>

---

<h4 id="woset-to-ordinal">Isomorphism of Well-Orderings to Unique Ordinals</h4>

> **Theorem:** Let $$(X, \le)$$ be a [well-ordered set](/definitions/#def-well-ordering). Then there exists a unique [ordinal number](/definitions/#def-ordinal-number) $$\alpha$$ such that $$(X, \le) \cong_{\operatorname{Ord}} (\alpha, \in)$$.

<details class="border rounded p-3 my-3" markdown="1">
<summary style="cursor: pointer;"><b>Proof</b> <span class="text-muted font-italic">(click to reveal)</span></summary>

{% include proofs/woset_isomorphic_to_ordinal.md %}

</details>

---

### The Axiom of Choice Cycle

<h4 id="hausdorff-maximal-principle">Hausdorff's Maximal Principle (The Tower Construction)</h4>

> **Theorem (Hausdorff):** Let $$(X, \le)$$ be a [partially ordered set](/definitions/#def-poset). Then there exists a [maximal chain](/definitions/#def-chain) in $$X$$.

<details class="border rounded p-3 my-3" markdown="1">
<summary style="cursor: pointer;"><b>Proof (Zermelo-Kneser Tower Construction)</b> <span class="text-muted font-italic">(click to reveal)</span></summary>

{% include proofs/hausdorff_maximal_principle.md %}

</details>

---

<h4 id="zorns-lemma">Zorn's Lemma</h4>

> **Theorem (Zorn):** If every [chain](/definitions/#def-chain) in a non-empty [partially ordered set](/definitions/#def-poset) $$X$$ has an [upper bound](/definitions/#def-bounds-min-max), then $$X$$ has a [maximal element](/definitions/#def-bounds-min-max).

<details class="border rounded p-3 my-3" markdown="1">
<summary style="cursor: pointer;"><b>Proof</b> <span class="text-muted font-italic">(click to reveal)</span></summary>

{% include proofs/zorns_lemma.md %}

</details>

---

<h4 id="well-ordering-theorem">Zermelo's Well-Ordering Theorem</h4>

> **Theorem (Zermelo):** Every set $$X$$ can be [well-ordered](/definitions/#def-well-ordering).

<details class="border rounded p-3 my-3" markdown="1">
<summary style="cursor: pointer;"><b>Proof</b> <span class="text-muted font-italic">(click to reveal)</span></summary>

{% include proofs/well_ordering_theorem.md %}

</details>

---

<h4 id="wo-implies-ac">Equivalence: WO implies AC</h4>

> **Theorem:** In $$\mathrm{ZF}^-$$, the [Well-Ordering Theorem](#well-ordering-theorem) implies the [Axiom of Choice](/definitions/#def-axiom-choice) ($$\mathbf{WO} \implies \mathbf{AC}$$).

<details class="border rounded p-3 my-3" markdown="1">
<summary style="cursor: pointer;"><b>Proof</b> <span class="text-muted font-italic">(click to reveal)</span></summary>

{% include proofs/wo_implies_ac.md %}

</details>

---

### Cardinality & The Continuum

<h4 id="schroder-bernstein">The Schröder–Bernstein Theorem</h4>

> **Theorem:** Let $$A$$ and $$B$$ be sets. If there exist [injections](/definitions/#def-injection) $$f \colon A \longrightarrow B$$ and $$g \colon B \longrightarrow A$$, then there exists a [bijection](/definitions/#def-bijection) $$h \colon A \longrightarrow B$$.

<details class="border rounded p-3 my-3" markdown="1">
<summary style="cursor: pointer;"><b>Proof 1: Set Cascade and Diagram Chase (König 1906)</b> <span class="text-muted font-italic">(click to reveal)</span></summary>

{% include proofs/schroder_bernstein_konig.md %}

</details>

<details class="border rounded p-3 my-3" markdown="1">
<summary style="cursor: pointer;"><b>Proof 2: Structural Fixed-Point on 𝒫(A) (via Knaster–Tarski)</b> <span class="text-muted font-italic">(click to reveal)</span></summary>

{% include proofs/schroder_bernstein_tarski.md %}

</details>

---

<h4 id="cantors-theorem">Cantor's Theorem on the Power Set</h4>

> **Theorem:** For any set $$A$$, $$\vert A \vert < \vert \mathcal{P}(A) \vert$$.

<details class="border rounded p-3 my-3" markdown="1">
<summary style="cursor: pointer;"><b>Proof</b> <span class="text-muted font-italic">(click to reveal)</span></summary>

{% include proofs/cantor_theorem.md %}

</details>

---

<h4 id="hessenbergs-theorem">Hessenberg's Theorem on Cardinal Arithmetic</h4>

> **Theorem:** For any [infinite cardinals](/definitions/#def-cardinal-number) $$\kappa$$ and $$\lambda$$:
> $$
> \kappa + \lambda = \kappa \cdot \lambda = \max\{\kappa, \lambda\}
> $$

<details class="border rounded p-3 my-3" markdown="1">
<summary style="cursor: pointer;"><b>Proof</b> <span class="text-muted font-italic">(click to reveal)</span></summary>

{% include proofs/hessenberg_theorem.md %}

</details>

---

<h4 id="cardinal-existence">Existence of Cardinal Numbers</h4>

> **Theorem:** In $$\mathrm{ZFC}^-$$, for every set $$A$$, the [cardinal number](/definitions/#def-cardinal-number) $$\vert A \vert$$ exists.

<details class="border rounded p-3 my-3" markdown="1">
<summary style="cursor: pointer;"><b>Proof</b> <span class="text-muted font-italic">(click to reveal)</span></summary>

{% include proofs/cardinal_existence.md %}

</details>

---

<h4 id="reals-and-power-set">Equinumerosity of ℝ and 𝒫(ℕ)</h4>

> **Theorem:** $$\mathbb{R} \sim \mathcal{P}(\mathbb{N})$$, and consequently $$\mathbb{R}$$ is uncountable ($$\vert\mathbb{R}\vert = \mathfrak{c}$$).

<details class="border rounded p-3 my-3" markdown="1">
<summary style="cursor: pointer;"><b>Proof</b> <span class="text-muted font-italic">(click to reveal)</span></summary>

{% include proofs/real_continuum_power_set.md %}

</details>

---

<h4 id="real-plane-dimension">The Dimension Paradox: ℝ ~ ℝ²</h4>

> **Theorem:** $$\mathbb{R} \sim \mathbb{R}^2$$.

<details class="border rounded p-3 my-3" markdown="1">
<summary style="cursor: pointer;"><b>Proof</b> <span class="text-muted font-italic">(click to reveal)</span></summary>

{% include proofs/real_plane_dimension.md %}

</details>

---

<h4 id="real-interval-bijection">Scale Invariance: (0, 1) ~ ℝ</h4>

> **Theorem:** $$(0, 1) \sim \mathbb{R}$$.

<details class="border rounded p-3 my-3" markdown="1">
<summary style="cursor: pointer;"><b>Proof</b> <span class="text-muted font-italic">(click to reveal)</span></summary>

{% include proofs/real_interval_bijection.md %}

</details>

---

### Real Analysis

<h4 id="archimedean-property">The Archimedean Property</h4>

> **Theorem:** $$\forall x, y \in \mathbb{R} \ (x > 0 \rightarrow \exists n \in \mathbb{N} \ nx > y)$$.

<details class="border rounded p-3 my-3" markdown="1">
<summary style="cursor: pointer;"><b>Proof</b> <span class="text-muted font-italic">(click to reveal)</span></summary>

{% include proofs/archimedean_property.md %}

</details>

---

<h4 id="density-of-rationals">Density of ℚ in ℝ</h4>

> **Theorem:** $$\mathbb{Q}$$ is [dense](/definitions/#def-order-boundedness) in $$\mathbb{R}$$.

<details class="border rounded p-3 my-3" markdown="1">
<summary style="cursor: pointer;"><b>Proof</b> <span class="text-muted font-italic">(click to reveal)</span></summary>

{% include proofs/density_of_rationals.md %}

</details>

---

### Theory of Computation

<h4 id="semidecidability-enumeration">Semidecidability and Dovetailing Enumeration</h4>

> **Theorem:** A set $$A \subseteq \mathbb{N}$$ is [semidecidable](/definitions/#def-semidecidable-set) if and only if it can be [enumerated](/definitions/#def-enumerator) by an algorithm.

<details class="border rounded p-3 my-3" markdown="1">
<summary style="cursor: pointer;"><b>Proof</b> <span class="text-muted font-italic">(click to reveal)</span></summary>

{% include proofs/semidecidability_enumeration.md %}

</details>

---

<h4 id="kleene-theorem">Kleene's Post Theorem on Decidability</h4>

> **Theorem (Kleene):** A set $$A \subseteq \mathbb{N}$$ is [decidable](/definitions/#def-decidable-set) if and only if both $$A$$ and $$A^c$$ are [semidecidable](/definitions/#def-semidecidable-set).

<details class="border rounded p-3 my-3" markdown="1">
<summary style="cursor: pointer;"><b>Proof</b> <span class="text-muted font-italic">(click to reveal)</span></summary>

{% include proofs/kleene_theorem.md %}

</details>

---

<h4 id="semidecidable-closure">Closure Properties of Semidecidable Sets</h4>

> **Theorem:** If $$A, B \subseteq \mathbb{N}$$ are [semidecidable](/definitions/#def-semidecidable-set), then $$A \cup B$$ and $$A \cap B$$ are [semidecidable](/definitions/#def-semidecidable-set).

<details class="border rounded p-3 my-3" markdown="1">
<summary style="cursor: pointer;"><b>Proof</b> <span class="text-muted font-italic">(click to reveal)</span></summary>

{% include proofs/semidecidable_closure.md %}

</details>
