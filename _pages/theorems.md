---
layout: page
title: Theorems & Proofs
permalink: /theorems/
description: A curated reference library of formal mathematical proofs.
nav: true
nav_order: 3
---

Welcome to the central reference library of proofs. This section maintains the complete, modular proofs for theorems cited across the blog and lecture notes.

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
* **Metatheory of Classical Logic:**
  * [Soundness of the Tautology System](#tautology-soundness)
  * [The Propositional Compactness Theorem](#compactness-theorem)
  * [Completeness of the Tautology System](#tautology-completeness)
  * [Consistency under Constant Extension](#constant-extension)
  * [The Henkin Witness Construction](#henkin-constants)
  * [Lindenbaum's Maximal Extension Lemma](#lindenbaum-lemma)
  * [The Fundamental Truth Lemma for Term Structures](#term-model-truth)
  * [Gödel's Completeness Theorem](#godel-completeness)
* **Set Theory & Cardinality:**
  * [The Schröder–Bernstein Theorem](#schroder-bernstein)
  * [Cantor's Theorem on the Power Set](#cantors-theorem)
  * [Hessenberg's Theorem on Cardinal Arithmetic](#hessenbergs-theorem)
  * [Equinumerosity of ℝ and 𝒫(ℕ)](#reals-and-power-set)
  * [The Dimension Paradox: ℝ ~ ℝ²](#real-plane-dimension)
  * [Scale Invariance: (0, 1) ~ ℝ](#real-interval-bijection)
* **Real Analysis:**
  * [The Archimedean Property of ℝ](#archimedean-property)
  * [The Density of ℚ in ℝ](#density-of-rationals)

---

### Lattices & Fixed Points

<h4 id="knaster-tarski">The Knaster–Tarski Fixed-Point Theorem</h4>

> **Theorem:** Let $$(L, \land, \lor)$$ be a complete lattice and $$f \colon L \longrightarrow L$$ be monotone. Then $$f$$ has a least fixed point $$\mu f$$.

<details class="border rounded p-3 my-3" markdown="1" open>
<summary style="cursor: pointer;"><b>Proof</b></summary>

{% include proofs/knaster_tarski.md %}

</details>

---

<h4 id="general-induction">The General Induction Principle</h4>

> **Theorem:** Let $$X$$ be a set and $$F \colon \mathcal{P}(X) \longrightarrow \mathcal{P}(X)$$ be monotone. Let $$S^* := \mu F$$ be its least fixed point. Then for any $$T \subseteq X$$, $$F(T) \subseteq T \implies S^* \subseteq T$$.

<details class="border rounded p-3 my-3" markdown="1" open>
<summary style="cursor: pointer;"><b>Proof</b></summary>

{% include proofs/general_induction.md %}

</details>

---

### Formal Languages & Propositional Logic

<h4 id="induction-strings">Principle of Induction on Strings</h4>

> **Theorem:** Let $$\Pi$$ be a property of strings over $$\Sigma$$ such that:
> 1. $$\Pi$$ holds for $$\varepsilon$$.
> 2. If $$\Pi$$ holds for $$\sigma$$, then for any $$s \in \Sigma$$, $$\Pi$$ holds for $$\sigma s$$.
> 
> Then $$\Pi$$ holds for all strings over $$\Sigma^*$$.

<details class="border rounded p-3 my-3" markdown="1" open>
<summary style="cursor: pointer;"><b>Proof</b></summary>

{% include proofs/induction_on_strings.md %}

</details>

---

<h4 id="induction-formulas">Principle of Induction on Propositional Formulae</h4>

> **Theorem:** Let $$\Pi$$ be a property of propositional formulae such that:
> 1. $$\Pi$$ holds for all variables.
> 2. If $$\Pi$$ holds for $$\varphi_1, \dots, \varphi_n$$, then $$\Pi$$ holds for $$c_k^n(\varphi_1, \dots, \varphi_n)$$ for any connective $$c_k^n$$.
> 
> Then $$\Pi$$ holds for all propositional formulae in $$\textbf{Frm}$$.

<details class="border rounded p-3 my-3" markdown="1" open>
<summary style="cursor: pointer;"><b>Proof</b></summary>

{% include proofs/induction_on_formulas.md %}

</details>

---

<h4 id="finiteness-variables">Finiteness of Variable Occurrences</h4>

> **Theorem:** For every formula $$\varphi \in \textbf{Frm}$$, the set of variables $$V(\varphi)$$ occurring in $$\varphi$$ is finite.

<details class="border rounded p-3 my-3" markdown="1" open>
<summary style="cursor: pointer;"><b>Proof</b></summary>

{% include proofs/finiteness_variable_occurrences.md %}

</details>

---

### Proof Theory

<h4 id="deduction-theorem">The Propositional Deduction Theorem</h4>

> **Theorem:** $$\Gamma \cup \{\phi\} \vdash \psi \iff \Gamma \vdash \phi \rightarrow \psi$$.

<details class="border rounded p-3 my-3" markdown="1" open>
<summary style="cursor: pointer;"><b>Proof</b></summary>

{% include proofs/deduction_theorem.md %}

</details>

---

<h4 id="ex-falso">Ex Falso Quodlibet</h4>

> **Theorem:** $$\{\phi, \neg \phi\} \vdash \psi$$.

<details class="border rounded p-3 my-3" markdown="1" open>
<summary style="cursor: pointer;"><b>Proof</b></summary>

{% include proofs/ex_falso_quodlibet.md %}

</details>

---

<h4 id="tautology-system">Deduction in the Tautology System</h4>

> **Theorem:** $$\{\phi, \psi, (\phi \land \psi) \rightarrow \xi\} \vdash \xi$$.

<details class="border rounded p-3 my-3" markdown="1" open>
<summary style="cursor: pointer;"><b>Proof</b></summary>

{% include proofs/tautology_system_example.md %}

</details>

---


### Metatheory of Classical Logic

<h4 id="tautology-soundness">Soundness of the Tautology System</h4>

> **Theorem:** In the tautology system, $$\Sigma \vdash \phi \implies \Sigma \models \phi$$.

<details class="border rounded p-3 my-3" markdown="1" open>
<summary style="cursor: pointer;"><b>Proof</b></summary>

{% include proofs/tautology_soundness.md %}

</details>

---

<h4 id="compactness-theorem">The Propositional Compactness Theorem</h4>

> **Theorem:** A set of formulae $$\Sigma$$ is satisfiable if and only if it is finitely satisfiable.

<details class="border rounded p-3 my-3" markdown="1" open>
<summary style="cursor: pointer;"><b>Proof</b></summary>

{% include proofs/compactness_theorem.md %}

</details>

---

<h4 id="tautology-completeness">Completeness of the Tautology System</h4>

> **Theorem:** In the tautology system, $$\Sigma \models \phi \implies \Sigma \vdash \phi$$.

<details class="border rounded p-3 my-3" markdown="1" open>
<summary style="cursor: pointer;"><b>Proof</b></summary>

{% include proofs/tautology_completeness.md %}

</details>

---

<h4 id="constant-extension">Consistency under Constant Extension</h4>

> **Theorem:** Let $$\Gamma$$ be consistent over $$\mathscr{L}$$. If $$c_0, c_1, \dots \notin \mathscr{L}$$, then $$\Gamma$$ is consistent over $$\mathscr{L} \cup \{c_0, c_1, \dots\}$$.

<details class="border rounded p-3 my-3" markdown="1" open>
<summary style="cursor: pointer;"><b>Proof</b></summary>

{% include proofs/constant_extension_consistency.md %}

</details>

---

<h4 id="henkin-constants">The Henkin Witness Construction</h4>

> **Theorem:** Any consistent set $$\Gamma$$ can be extended to a consistent set $$\Gamma \cup \{\neg \forall x \phi_n(x) \rightarrow \neg \phi_n(c_{k_n}) \mid n \in \mathbb{N}\}$$, where $$c_{k_n}$$ does not occur in any $$\phi_m$$ for $$m < n$$.

<details class="border rounded p-3 my-3" markdown="1" open>
<summary style="cursor: pointer;"><b>Proof</b></summary>

{% include proofs/henkin_constants_consistency.md %}

</details>

---

<h4 id="lindenbaum-lemma">Lindenbaum's Maximal Extension Lemma</h4>

> **Theorem:** Every consistent set $$\Gamma$$ can be extended to a consistent set $$\Delta$$ such that for every formula $$\phi$$, either $$\phi \in \Delta$$ or $$\neg \phi \in \Delta$$.

<details class="border rounded p-3 my-3" markdown="1" open>
<summary style="cursor: pointer;"><b>Proof</b></summary>

{% include proofs/lindenbaum_lemma.md %}

</details>

---

<h4 id="term-model-truth">The Fundamental Truth Lemma for Term Structures</h4>

> **Theorem:** Let $$\mathfrak{A}$$ be a canonical term structure over maximal consistent Henkin set $$\Delta$$. Then $$\mathfrak{A} \models \phi^* \iff \phi \in \Delta$$.

<details class="border rounded p-3 my-3" markdown="1" open>
<summary style="cursor: pointer;"><b>Proof</b></summary>

{% include proofs/term_model_truth.md %}

</details>

---

<h4 id="godel-completeness">Gödel's Completeness Theorem</h4>

> **Theorem:** If $$\Gamma$$ is consistent, then $$\Gamma$$ has a model. Consequently, $$\Gamma \models \phi \implies \Gamma \vdash \phi$$.

<details class="border rounded p-3 my-3" markdown="1" open>
<summary style="cursor: pointer;"><b>Proof</b></summary>

{% include proofs/godel_completeness.md %}

</details>

---

### Set Theory & Cardinality

<h4 id="schroder-bernstein">The Schröder–Bernstein Theorem</h4>

> **Theorem:** Let $$A$$ and $$B$$ be sets. If there exist injections $$f \colon A \longrightarrow B$$ and $$g \colon B \longrightarrow A$$, then there exists a bijection $$h \colon A \longrightarrow B$$.

<details class="border rounded p-3 my-3" markdown="1" open>
<summary style="cursor: pointer;"><b>Proof (König, 1906)</b></summary>

{% include proofs/schroder_bernstein.md %}

</details>

---

<h4 id="cantors-theorem">Cantor's Theorem</h4>

> **Theorem:** For any set $$A$$, $$\vert A \vert < \vert \mathcal{P}(A) \vert$$.

<details class="border rounded p-3 my-3" markdown="1" open>
<summary style="cursor: pointer;"><b>Proof</b></summary>

{% include proofs/cantor_theorem.md %}

</details>

---

<h4 id="hessenbergs-theorem">Hessenberg's Theorem</h4>

> **Theorem:** For any infinite cardinals $$\kappa$$ and $$\lambda$$:
> $$
> \kappa + \lambda = \kappa \cdot \lambda = \max\{\kappa, \lambda\}
> $$

<details class="border rounded p-3 my-3" markdown="1" open>
<summary style="cursor: pointer;"><b>Proof</b></summary>

{% include proofs/hessenberg_theorem.md %}

</details>

---

<h4 id="reals-and-power-set">Equinumerosity of ℝ and 𝒫(ℕ)</h4>

> **Theorem:** $$\mathbb{R} \sim \mathcal{P}(\mathbb{N})$$, and consequently $$\mathbb{R}$$ is uncountable ($$\vert\mathbb{R}\vert = \mathfrak{c}$$).

<details class="border rounded p-3 my-3" markdown="1" open>
<summary style="cursor: pointer;"><b>Proof</b></summary>

{% include proofs/real_continuum_power_set.md %}

</details>

---

<h4 id="real-plane-dimension">The Dimension Paradox: ℝ ~ ℝ²</h4>

> **Theorem:** $$\mathbb{R} \sim \mathbb{R}^2$$.

<details class="border rounded p-3 my-3" markdown="1" open>
<summary style="cursor: pointer;"><b>Proof</b></summary>

{% include proofs/real_plane_dimension.md %}

</details>

---

<h4 id="real-interval-bijection">Scale Invariance: (0, 1) ~ ℝ</h4>

> **Theorem:** $$(0, 1) \sim \mathbb{R}$$.

<details class="border rounded p-3 my-3" markdown="1" open>
<summary style="cursor: pointer;"><b>Proof</b></summary>

{% include proofs/real_interval_bijection.md %}

</details>

---

### Real Analysis

<h4 id="archimedean-property">The Archimedean Property</h4>

> **Theorem:** $$\forall x, y \in \mathbb{R} \ (x > 0 \rightarrow \exists n \in \mathbb{N} \ nx > y)$$.

<details class="border rounded p-3 my-3" markdown="1" open>
<summary style="cursor: pointer;"><b>Proof</b></summary>

{% include proofs/archimedean_property.md %}

</details>

---

<h4 id="density-of-rationals">Density of ℚ in ℝ</h4>

> **Theorem:** $$\forall x, y \in \mathbb{R} \ (x < y \rightarrow \exists q \in \mathbb{Q} \ x < q < y)$$.

<details class="border rounded p-3 my-3" markdown="1" open>
<summary style="cursor: pointer;"><b>Proof</b></summary>

{% include proofs/density_of_rationals.md %}

</details>
