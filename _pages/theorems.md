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
* **Set Theory & Cardinality:**
  * [The Schröder–Bernstein Theorem](#schroder-bernstein)
  * [Cantor's Theorem on the Power Set](#cantors-theorem)
  * [Hessenberg's Theorem on Cardinal Arithmetic](#hessenbergs-theorem)
  * [Equinumerosity of the Reals and the Power Set of Naturals](#reals-and-power-set)
  * [The Dimension Paradox: ℝ ~ ℝ²](#real-plane-dimension)
  * [Scale Invariance: (0, 1) ~ ℝ](#real-interval-bijection)
* **Real Analysis:**
  * [The Archimedean Property of ℝ](#archimedean-property)
  * [The Density of ℚ in ℝ](#density-of-rationals)

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

> **Theorem:** For any set $$A$$, there exists no surjection $$f \colon A \longrightarrow \mathcal{P}(A)$$.

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
