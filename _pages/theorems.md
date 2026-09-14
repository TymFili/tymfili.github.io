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

Let $$A := \{x \in L \mid f(x) \le x\}$$ and $$a := \inf A$$. Pick any $$x \in A$$, then $$a \le x$$, so $$f(a) \le f(x) \le x$$ and thus $$f(a) \le \inf A = a$$, showing that $$a \in A$$ and $$f(a) \in A$$. 

Since $$f(a) \in A$$, we get that $$a \le f(a)$$, so $$f(a) = a$$. Let $$b$$ be a fixed point of $$f$$, then $$f(b) \le b$$, so $$b \in A$$ and thus $$a \le b$$.

<div style="text-align: right;">$$\boldsymbol{Q.E.D.}$$</div>

</details>

---

<h4 id="general-induction">The General Induction Principle</h4>

> **Theorem:** Let $$X$$ be a set and $$F \colon \mathcal{P}(X) \longrightarrow \mathcal{P}(X)$$ be [monotone](/definitions/#def-monotone-function). Let $$S^* := \mu F$$ be its [least fixed point](/definitions/#def-fixed-point). Then for any $$T \subseteq X$$, $$F(T) \subseteq T \implies S^* \subseteq T$$.

<details class="border rounded p-3 my-3" markdown="1">
<summary style="cursor: pointer;"><b>Proof</b> <span class="text-muted font-italic">(click to reveal)</span></summary>

By the [Knaster–Tarski Theorem](#knaster-tarski), $$S^* = \inf \{S \subseteq X \mid F(S) \subseteq S\} = \bigcap \{S \subseteq X \mid F(S) \subseteq S\}$$. 

If $$F(T) \subseteq T$$, then $$T$$ is one of the sets in this intersection, so $$S^* \subseteq T$$.

<div style="text-align: right;">$$\boldsymbol{Q.E.D.}$$</div>

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

Let $$S$$ be the set of strings over $$\Sigma$$ for which $$\Pi$$ holds. Then $$S$$ satisfies the inductive conditions defining $$\Sigma^*$$. 

Since $$\Sigma^*$$ is the smallest set satisfying these conditions, we must have $$\Sigma^* \subseteq S$$.

<div style="text-align: right;">$$\boldsymbol{Q.E.D.}$$</div>

</details>

---

<h4 id="induction-formulas">Principle of Induction on Propositional Formulae</h4>

> **Theorem:** Let $$\Pi$$ be a property of propositional [formulae](/definitions/#def-propositional-syntax) such that:
> 1. $$\Pi$$ holds for all variables.
> 2. If $$\Pi$$ holds for $$\varphi_1, \dots, \varphi_n$$, then $$\Pi$$ holds for $$c_k^n(\varphi_1, \dots, \varphi_n)$$ for any connective $$c_k^n$$.
> 
> Then $$\Pi$$ holds for all propositional formulae in $$\textbf{Frm}$$.

<details class="border rounded p-3 my-3" markdown="1">
<summary style="cursor: pointer;"><b>Proof</b> <span class="text-muted font-italic">(click to reveal)</span></summary>

Let $$\mathscr{C} \subseteq \textbf{Frm}$$ be the set of formulae for which $$\Pi$$ holds. 

Condition 1 gives $$\mathbf{Var} \subseteq \mathscr{C}$$. If $$\varphi_1, \dots, \varphi_n \in \mathscr{C}$$ and $$c_k^n$$ is an $$n$$-ary connective, condition 2 gives $$c_k^n(\varphi_1, \dots, \varphi_n) \in \mathscr{C}$$. 

Thus $$\mathscr{C}$$ satisfies the conditions defining $$\textbf{Frm}$$, and because $$\textbf{Frm}$$ is the smallest set satisfying these conditions, we conclude $$\textbf{Frm} \subseteq \mathscr{C}$$.

<div style="text-align: right;">$$\boldsymbol{Q.E.D.}$$</div>

</details>

---

<h4 id="finiteness-variables">Finiteness of Variable Occurrences</h4>

> **Theorem:** For every [formula](/definitions/#def-propositional-syntax) $$\varphi \in \textbf{Frm}$$, the set of [variables](/definitions/#def-propositional-syntax) $$V(\varphi)$$ occurring in $$\varphi$$ is finite.

<details class="border rounded p-3 my-3" markdown="1">
<summary style="cursor: pointer;"><b>Proof</b> <span class="text-muted font-italic">(click to reveal)</span></summary>

We proceed by induction on the structure of propositional formulae.

* **Base Case:** Let $$\varphi$$ be a variable $$p$$. Then $$V(p) = \{p\}$$. Since a singleton set is finite, the property holds.
* **Inductive Step:** Let $$\varphi_1, \dots, \varphi_n$$ be formulae, and assume the inductive hypothesis: $$V(\varphi_1), \dots, V(\varphi_n)$$ are all finite sets. Let $$c_k^n$$ be an $$n$$-ary connective. We evaluate $$\psi = c_k^n(\varphi_1, \dots, \varphi_n)$$. By definition, the variables in $$\psi$$ are exactly those occurring in its subformulae:
  $$
  V(\psi) = V(\varphi_1) \cup \dots \cup V(\varphi_n)
  $$
  Since the union of finitely many finite sets is finite, $$V(\psi)$$ is finite. By the induction principle, $$V(\varphi)$$ is finite for every formula $$\varphi \in \textbf{Frm}$$.

<div style="text-align: right;">$$\boldsymbol{Q.E.D.}$$</div>

</details>

---

### Proof Theory

<h4 id="deduction-theorem">The Propositional Deduction Theorem</h4>

> **Theorem:** In a propositional [proof system](/definitions/#def-proof-system), $$\Gamma \cup \{\phi\} \vdash \psi \iff \Gamma \vdash \phi \rightarrow \psi$$.

<details class="border rounded p-3 my-3" markdown="1">
<summary style="cursor: pointer;"><b>Proof</b> <span class="text-muted font-italic">(click to reveal)</span></summary>

($$\implies$$) Let $$\Pi$$ be a proof tree of $$\psi$$ from $$\Gamma \cup \{\phi\}$$. By applying the $$\rightarrow I$$ rule, we obtain a proof tree of $$\phi \rightarrow \psi$$ where the assumption $$\phi$$ is discharged. The remaining open assumptions are in $$\Gamma$$.

($$\impliedby$$) Let $$\Pi$$ be a proof tree of $$\phi \rightarrow \psi$$ from $$\Gamma$$. By extending this tree with an open assumption $$\phi$$ and applying $$\rightarrow E$$, we obtain a proof tree of $$\psi$$ with open assumptions in $$\Gamma \cup \{\phi\}$$.

<div style="text-align: right;">$$\boldsymbol{Q.E.D.}$$</div>

</details>

---

<h4 id="ex-falso">Ex Falso Quodlibet</h4>

> **Theorem:** $$\{\phi, \neg \phi\} \vdash \psi$$.

<details class="border rounded p-3 my-3" markdown="1">
<summary style="cursor: pointer;"><b>Proof</b> <span class="text-muted font-italic">(click to reveal)</span></summary>

We show that $$\{\phi, \neg \phi\} \vdash \psi$$:

1. $$\phi \rightarrow \neg \phi \rightarrow \psi$$ (Axiom: Tautology)
2. $$\phi$$ (Assumption)
3. $$\neg \phi \rightarrow \psi$$ (Modus Ponens on 1, 2)
4. $$\neg \phi$$ (Assumption)
5. $$\psi$$ (Modus Ponens on 3, 4)

<div style="text-align: right;">$$\boldsymbol{Q.E.D.}$$</div>

</details>

---

<h4 id="tautology-system">Deduction in the Tautology System</h4>

> **Theorem:** $$\{\phi, \psi, (\phi \land \psi) \rightarrow \xi\} \vdash \xi$$.

<details class="border rounded p-3 my-3" markdown="1">
<summary style="cursor: pointer;"><b>Proof</b> <span class="text-muted font-italic">(click to reveal)</span></summary>

We show that $$\{\phi, \psi, (\phi \land \psi) \rightarrow \xi\} \vdash \xi$$ via Modus Ponens:

1. $$\phi \rightarrow \psi \rightarrow (\phi \land \psi)$$ (Axiom: Tautology)
2. $$\phi$$ (Assumption)
3. $$\psi \rightarrow (\phi \land \psi)$$ (Modus Ponens on 1, 2)
4. $$\psi$$ (Assumption)
5. $$\phi \land \psi$$ (Modus Ponens on 3, 4)
6. $$(\phi \land \psi) \rightarrow \xi$$ (Assumption)
7. $$\xi$$ (Modus Ponens on 5, 6)

<div style="text-align: right;">$$\boldsymbol{Q.E.D.}$$</div>

</details>

---

### First-Order Semantics & Metatheory

<h4 id="free-variables">Free Variable Agreement Theorem</h4>

> **Theorem:** Let $$\varphi$$ be a formula. If two [variable assignments](/definitions/#def-variable-assignment) $$s$$ and $$r$$ agree on all [free variables](/definitions/#def-free-variables) of $$\varphi$$, then $$\mathfrak{A} \models \varphi[s] \iff \mathfrak{A} \models \varphi[r]$$.

<details class="border rounded p-3 my-3" markdown="1">
<summary style="cursor: pointer;"><b>Proof</b> <span class="text-muted font-italic">(click to reveal)</span></summary>

We proceed by structural induction on the formula $$\varphi$$.

* **Atomic Case ($$\varphi = R t_1 \dots t_n$$):**  
  The free variables of $$\varphi$$ are all variables occurring in the terms $$t_1, \dots, t_n$$. Since assignments $$s$$ and $$r$$ agree on all variables in $$t_i$$, the recursive evaluation of terms gives $$\bar{s}(t_i) = \bar{r}(t_i)$$ for all $$i$$. Thus:
  $$
  (\bar{s}(t_1), \dots, \bar{s}(t_n)) \in R^\mathfrak{A} \iff (\bar{r}(t_1), \dots, \bar{r}(t_n)) \in R^\mathfrak{A}
  $$
* **Connective Steps:** Direct from the induction hypothesis.
* **Quantifier Step ($$\varphi = \forall x \psi$$):**  
  The free variables of $$\varphi$$ are $$\operatorname{FV}(\psi) \setminus \{x\}$$. For any element $$t \in \vert \mathfrak{A} \vert$$, the modified assignments $$s_{x \mapsto t}$$ and $$r_{x \mapsto t}$$ agree on $$x$$ (both equal $$t$$) and agree on all variables in $$\operatorname{FV}(\psi) \setminus \{x\}$$. 

  By the inductive hypothesis, $$\mathfrak{A} \models \psi[s_{x \mapsto t}] \iff \mathfrak{A} \models \psi[r_{x \mapsto t}]$$ for all $$t \in \vert \mathfrak{A} \vert$$. Hence $$\mathfrak{A} \models \forall x \psi[s] \iff \mathfrak{A} \models \forall x \psi[r]$$.

<div style="text-align: right;">$$\boldsymbol{Q.E.D.}$$</div>

</details>

---

<h4 id="tautology-soundness">Soundness of the Tautology System</h4>

> **Theorem:** In the [tautology system](/definitions/#def-tautology-system), $$\Sigma \vdash \phi \implies \Sigma \models \phi$$.

<details class="border rounded p-3 my-3" markdown="1">
<summary style="cursor: pointer;"><b>Proof</b> <span class="text-muted font-italic">(click to reveal)</span></summary>

Let $$\varphi(n)$$ be the statement: *"The thesis holds for all proofs of length $$k \le n$$"*. We proceed by induction on $$n$$.

* **Base Case:** $$\varphi(0)$$ holds vacuously.
* **Inductive Step:** Assume $$\varphi(n)$$. If the $$(n+1)$$-th formula $$P_{n+1}$$ is a tautology, then $$\Sigma \models P_{n+1}$$. If $$P_{n+1} \in \Sigma$$ is an assumption, then trivially $$\Sigma \models P_{n+1}$$. If $$P_{n+1}$$ is obtained by Modus Ponens from preceding formulae $$P_i$$ and $$P_j = P_i \rightarrow P_{n+1}$$, then by the inductive hypothesis $$\Sigma \models P_i$$ and $$\Sigma \models P_i \rightarrow P_{n+1}$$, which implies $$\Sigma \models P_{n+1}$$.

<div style="text-align: right;">$$\boldsymbol{Q.E.D.}$$</div>

</details>

---

<h4 id="compactness-theorem">The Propositional Compactness Theorem</h4>

> **Theorem:** A set of formulae $$\Sigma$$ is [satisfiable](/definitions/#def-tautology) if and only if it is [finitely satisfiable](/definitions/#def-finitely-satisfiable).

<details class="border rounded p-3 my-3" markdown="1">
<summary style="cursor: pointer;"><b>Proof</b> <span class="text-muted font-italic">(click to reveal)</span></summary>

($$\implies$$) Trivial, since any valuation satisfying $$\Sigma$$ satisfies all its finite subsets.

($$\impliedby$$) Let $$\phi_0, \phi_1, \dots$$ be an enumeration of all propositional formulae. Define:
$$
\Delta_0 := \Sigma, \qquad \Delta_{n+1} := \begin{cases} \Delta_n \cup \{\phi_n\} & \text{if finitely satisfiable}, \\ \Delta_n \cup \{\neg \phi_n\} & \text{otherwise}. \end{cases}
$$
Let $$\Delta := \bigcup_{n \in \mathbb{N}} \Delta_n$$. Then $$\Delta$$ is finitely satisfiable. 

For any propositional variable $$p$$, define $$\mathcal{I}(p) = \operatorname{True} \iff p \in \Delta$$. By structural induction on formulae, the extended interpretation $$\hat{\mathcal{I}}$$ satisfies $$\Delta$$, and thus satisfies $$\Sigma \subseteq \Delta$$.

<div style="text-align: right;">$$\boldsymbol{Q.E.D.}$$</div>

</details>

---

<h4 id="tautology-completeness">Completeness of the Tautology System</h4>

> **Theorem:** In the tautology system, $$\Sigma \models \phi \implies \Sigma \vdash \phi$$.

<details class="border rounded p-3 my-3" markdown="1">
<summary style="cursor: pointer;"><b>Proof</b> <span class="text-muted font-italic">(click to reveal)</span></summary>

By the [Propositional Compactness Theorem](#compactness-theorem), $$\Sigma \models \phi$$ implies there exists a finite subset $$\Sigma_0 = \{\psi_0, \dots, \psi_n\} \subseteq \Sigma$$ such that:
$$
\Sigma_0 \models \phi
$$
By the [Propositional Deduction Theorem](#deduction-theorem), this is equivalent to:
$$
\models \psi_0 \rightarrow \psi_1 \rightarrow \dots \rightarrow \phi
$$
Because this formula is a semantic tautology, it is an axiom of the tautology system. Repeated applications of Modus Ponens with assumptions from $$\Sigma_0$$ yield a formal proof of $$\phi$$.

<div style="text-align: right;">$$\boldsymbol{Q.E.D.}$$</div>

</details>

---

<h4 id="constant-extension">Consistency under Constant Extension</h4>

> **Theorem:** Let $$\Gamma$$ be [consistent](/definitions/#def-consistency) over language $$\mathscr{L}$$. If $$c_0, c_1, \dots \notin \mathscr{L}$$, then $$\Gamma$$ is consistent over $$\mathscr{L} \cup \{c_0, c_1, \dots\}$.

<details class="border rounded p-3 my-3" markdown="1">
<summary style="cursor: pointer;"><b>Proof</b> <span class="text-muted font-italic">(click to reveal)</span></summary>

Suppose for contradiction that $$\Gamma$$ is inconsistent over $$\mathscr{L} \cup \{c_0, c_1, \dots\}$$. 

Then there exists a formal derivation of $$\bot$$. Because formal proofs are finite sequences, this derivation uses only a finite subset of the new constants $$\{c_{i_1}, \dots, c_{i_k}\}$$.

Replacing each constant $$c_{i_j}$$ throughout the proof with a distinct variable not occurring anywhere in the original proof yields a valid formal derivation of $$\bot$$ using only formulae from the original language $$\mathscr{L}$$. This contradicts the consistency of $$\Gamma$$ over $$\mathscr{L}$$.

<div style="text-align: right;">$$\boldsymbol{Q.E.D.}$$</div>

</details>

---

<h4 id="henkin-constants">The Henkin Witness Construction</h4>

> **Theorem:** Any consistent set $$\Gamma$$ can be extended to a consistent set $$\Gamma \cup \{\neg \forall x \phi_n(x) \rightarrow \neg \phi_n(c_{k_n}) \mid n \in \mathbb{N}\}$$, where $$c_{k_n}$$ does not occur in any $$\phi_m$$ for $$m < n$$.

<details class="border rounded p-3 my-3" markdown="1">
<summary style="cursor: pointer;"><b>Proof</b> <span class="text-muted font-italic">(click to reveal)</span></summary>

Let $$\Gamma'_0 := \Gamma$$, and inductively define:
$$
\Gamma'_{n+1} := \Gamma'_n \cup \{\neg \forall x \phi_n(x) \rightarrow \neg \phi_n(c_{k_n})\}
$$
where $$c_{k_n}$$ is a fresh constant not occurring in any $$\phi_m$$ for $$m < n$$.

Let $$\varphi(n)$$ be the statement: *"$$\Gamma'_n$$ is consistent"*. Assume for contradiction that $$\Gamma'_{n+1}$$ is inconsistent. Then:
$$
\Gamma'_n \cup \{\neg \forall x \phi_n(x) \rightarrow \neg \phi_n(c_{k_n})\} \vdash \bot \implies \Gamma'_n \vdash \neg \forall x \phi_n(x) \land \phi_n(c_{k_n})
$$
This yields both $$\Gamma'_n \vdash \neg \forall x \phi_n(x)$$ and, by universal generalization on the fresh constant $$c_{k_n}$$, $$\Gamma'_n \vdash \forall x \phi_n(x)$$. Thus $$\Gamma'_n \vdash \bot$$, contradicting the consistency of $$\Gamma'_n$$.

By contraposition, each $$\Gamma'_n$$ is consistent. Let $$\Gamma' := \bigcup_{n \in \mathbb{N}} \Gamma'_n$$. Any formal derivation of $$\bot$$ from $$\Gamma'$$ is finite and thus contained in some $$\Gamma'_n$$. Hence $$\Gamma'$$ is consistent.

<div style="text-align: right;">$$\boldsymbol{Q.E.D.}$$</div>

</details>

---

<h4 id="lindenbaum-lemma">Lindenbaum's Maximal Extension Lemma</h4>

> **Theorem:** Every [consistent](/definitions/#def-consistency) set $$\Gamma$$ can be extended to a [maximally consistent](/definitions/#def-maximal-consistency) set $$\Delta$$.

<details class="border rounded p-3 my-3" markdown="1">
<summary style="cursor: pointer;"><b>Proof</b> <span class="text-muted font-italic">(click to reveal)</span></summary>

Let $$\phi_0, \phi_1, \dots$$ be an enumeration of all first-order formulae in the language. Define:
$$
\Delta_0 := \Gamma, \qquad \Delta_{n+1} := \begin{cases} \Delta_n \cup \{\phi_n\} & \text{if consistent}, \\ \Delta_n \cup \{\neg \phi_n\} & \text{otherwise}. \end{cases}
$$
If both $$\Delta_n \cup \{\phi_n\} \vdash \bot$$ and $$\Delta_n \cup \{\neg \phi_n\} \vdash \bot$$, then by Proof by Contradiction, $$\Delta_n \vdash \neg \phi_n$$ and $$\Delta_n \vdash \phi_n$$, implying $$\Delta_n \vdash \bot$$. Thus consistency is preserved at every step.

Let $$\Delta := \bigcup_{n \in \mathbb{N}} \Delta_n$$. Since any formal contradiction would arise from a finite subset contained in some $$\Delta_n$$, $$\Delta$$ is consistent and maximally complete.

<div style="text-align: right;">$$\boldsymbol{Q.E.D.}$$</div>

</details>

---

<h4 id="term-model-truth">The Fundamental Truth Lemma for Term Structures</h4>

> **Theorem:** Let $$\mathfrak{A}$$ be a [canonical term structure](/definitions/#def-term-verifier) over maximal consistent Henkin set $$\Delta$$. Then $$\mathfrak{A} \models \phi^* \iff \phi \in \Delta$$.

<details class="border rounded p-3 my-3" markdown="1">
<summary style="cursor: pointer;"><b>Proof</b> <span class="text-muted font-italic">(click to reveal)</span></summary>

We proceed by structural induction on formulae. 

For the quantifier step, let $$\phi = \forall x \psi(x)$$:
$$
\mathfrak{A} \models (\forall x \psi(x))^* \iff \forall t \in \vert \mathfrak{A} \vert \ \mathfrak{A} \models \psi^*[s_{x \mapsto t}] \iff \forall t \in \vert \mathfrak{A} \vert \ \psi(t) \in \Delta
$$
by the inductive hypothesis.

If $$\neg \forall x \psi(x) \in \Delta$$, then by the [Henkin Witness Construction](#henkin-constants), the witness formula satisfies $$\neg \psi(c_{k}) \in \Delta$$ for some Henkin constant $$c_{k}$$. 

Since $$c_k \in \vert \mathfrak{A} \vert$$, this directly contradicts that $$\psi(t) \in \Delta$$ for all terms $$t \in \vert \mathfrak{A} \vert$$. The remaining connective steps follow directly from maximal consistency.

<div style="text-align: right;">$$\boldsymbol{Q.E.D.}$$</div>

</details>

---

<h4 id="godel-completeness">Gödel's Completeness Theorem</h4>

> **Theorem:** If $$\Gamma$$ is [consistent](/definitions/#def-consistency), then $$\Gamma$$ has a [model](/definitions/#def-model-theory). Consequently, $$\Gamma \models \phi \implies \Gamma \vdash \phi$$.

<details class="border rounded p-3 my-3" markdown="1">
<summary style="cursor: pointer;"><b>Proof</b> <span class="text-muted font-italic">(click to reveal)</span></summary>

Let $$\Gamma$$ be consistent. 

By the [Henkin Witness Construction](#henkin-constants) and [Lindenbaum's Lemma](#lindenbaum-lemma), we extend $$\Gamma$$ to a complete consistent theory $$\Delta$$ containing witness constants. 

By the [Fundamental Truth Lemma](#term-model-truth), the canonical quotient term structure $$\mathfrak{A}' := \mathfrak{A} / E^\mathfrak{A}$$ satisfies $$\Delta$$. Because $$\Gamma \subseteq \Delta$$, we have:
$$
\mathfrak{A}' \models \Gamma
$$
showing that every consistent theory has a model.

Now, if $$\Gamma \models \phi$$, then the set $$\Gamma \cup \{\neg \phi\}$$ cannot have a model and is therefore inconsistent:
$$
\Gamma \cup \{\neg \phi\} \vdash \bot \implies \Gamma \vdash \phi
$$

<div style="text-align: right;">$$\boldsymbol{Q.E.D.}$$</div>

</details>

---

### Axiomatic Set Theory & Ordinals

<h4 id="russell-paradox">Inconsistency of Naive Set Theory (Russell's Paradox)</h4>

> **Theorem:** Naive Set Theory is inconsistent and has no model.

<details class="border rounded p-3 my-3" markdown="1">
<summary style="cursor: pointer;"><b>Proof</b> <span class="text-muted font-italic">(click to reveal)</span></summary>

Assume a model of Naive Set Theory exists. 

By unrestricted comprehension, define the set:
$$
A := \{x \mid x \notin x\}
$$
Then by definition of membership:
$$
A \in A \iff A \notin A
$$
which is a direct logical contradiction. Thus, $$\mathrm{NST} \models \bot$$.

<div style="text-align: right;">$$\boldsymbol{Q.E.D.}$$</div>

</details>

---

<h4 id="induction-omega">Principle of Induction on ω</h4>

> **Theorem:** Let $$S \subseteq \omega$$. If $$0 \in S$$ and $$\forall n \ (n \in S \rightarrow n + 1 \in S)$$, then $$S = \omega$$.

<details class="border rounded p-3 my-3" markdown="1">
<summary style="cursor: pointer;"><b>Proof</b> <span class="text-muted font-italic">(click to reveal)</span></summary>

By hypothesis, $$0 \in S$$ and $$\forall n \ (n \in S \rightarrow n + 1 \in S)$$, so $$S$$ is an inductive set. 

By the definition of $$\omega := \bigcap \{x \in \mathcal{P}(\mathcal{I}) \mid x \text{ is inductive}\}$$, we have $$\omega \subseteq S$$. Since $$S \subseteq \omega$$ by assumption, we conclude $$S = \omega$$.

<div style="text-align: right;">$$\boldsymbol{Q.E.D.}$$</div>

</details>

---

<h4 id="well-ordered-induction">Principle of Well-Ordered Induction</h4>

> **Theorem:** Let $$(X, \le)$$ be a [well-ordered set](/definitions/#def-well-ordering) and let $$\Pi$$ be a property. If $$\Pi(a)$$ holds whenever $$\Pi(y)$$ holds for all $$y < a$$, then $$\Pi(x)$$ holds for all $$x \in X$$.

<details class="border rounded p-3 my-3" markdown="1">
<summary style="cursor: pointer;"><b>Proof</b> <span class="text-muted font-italic">(click to reveal)</span></summary>

Let $$S := \{x \in X \mid \neg \Pi(x)\}$$. 

If $$S \neq \emptyset$$, let $$a := \min_\le S$$. Then for all $$y < a$$, we have $$y \notin S$$, so $$\Pi(y)$$ holds. 

By the inductive hypothesis, this implies that $$\Pi(a)$$ must hold, contradicting that $$a \in S$$. Thus $$S = \emptyset$$.

<div style="text-align: right;">$$\boldsymbol{Q.E.D.}$$</div>

</details>

---

<h4 id="woset-automorphism">Uniqueness of Order Automorphisms on Wosets</h4>

> **Theorem:** Let $$(X, \le)$$ be a [well-ordered set](/definitions/#def-well-ordering) and $$f \colon X \longrightarrow X$$ an [order automorphism](/definitions/#def-order-isomorphism). Then $$\forall x \in X \ x \le f(x)$$. Consequently, the only order automorphism of $$(X, \le)$$ is $$\operatorname{id}_X$$.

<details class="border rounded p-3 my-3" markdown="1">
<summary style="cursor: pointer;"><b>Proof</b> <span class="text-muted font-italic">(click to reveal)</span></summary>

Let $$S := \{x \in X \mid f(x) < x\}$$. If $$S \neq \emptyset$$, let $$s := \min_\le S$$. 

Since $$f(s) < s$$, applying the order-preserving bijection $$f$$ yields $$f(f(s)) < f(s)$$, which contradicts the minimality of $$s$$ in $$S$$. Hence $$S = \emptyset$$, so $$\forall x \in X \ x \le f(x)$$.

If $$f$$ is an automorphism, its inverse $$f^{-1}$$ is also an automorphism. Thus for all $$x \in X$$, we have both $$x \le f(x)$$ and $$x \le f^{-1}(x) \implies f(x) \le x$$. Hence $$f(x) = x = \operatorname{id}_X(x)$$.

<div style="text-align: right;">$$\boldsymbol{Q.E.D.}$$</div>

</details>

---

<h4 id="woset-initial-segment">Wosets and Initial Segments</h4>

> **Theorem:** A [well-ordered set](/definitions/#def-well-ordering) $$(X, \le)$$ is never order-isomorphic to any of its proper [initial segments](/definitions/#def-initial-segment) $$X_a$$.

<details class="border rounded p-3 my-3" markdown="1">
<summary style="cursor: pointer;"><b>Proof</b> <span class="text-muted font-italic">(click to reveal)</span></summary>

Suppose for contradiction that $$f \colon X \longrightarrow X_a$$ is an order isomorphism onto the proper initial segment $$X_a := \{x \in X \mid x < a\}$$.

Then $$f(a) \in X_a$$, which means $$f(a) < a$$. 

However, by the [Uniqueness of Order Automorphisms Theorem](#woset-automorphism), we have $$x \le f(x)$$ for all $$x \in X$$. In particular, $$a \le f(a)$$, a contradiction.

<div style="text-align: right;">$$\boldsymbol{Q.E.D.}$$</div>

</details>

---

<h4 id="woset-comparability">Comparability of Well-Ordered Sets</h4>

> **Theorem:** Let $$\mathrm{X} := (X, \le)$$ and $$\mathrm{Y} := (Y, \hat{\le})$$ be [well-ordered sets](/definitions/#def-well-ordering). Then exactly one of the following holds:
> 1. $$\mathrm{X} \sqsubset \mathrm{Y}$$,
> 2. $$\mathrm{X} \cong_{\operatorname{Ord}} \mathrm{Y}$$,
> 3. $$\mathrm{Y} \sqsubset \mathrm{X}$$.

<details class="border rounded p-3 my-3" markdown="1">
<summary style="cursor: pointer;"><b>Proof</b> <span class="text-muted font-italic">(click to reveal)</span></summary>

Define the relation:
$$
f := \{(x, y) \in X \times Y \mid \mathrm{X}_x \cong_{\operatorname{Ord}} \mathrm{Y}_y\}
$$
By [Wosets and Initial Segments](#woset-initial-segment), an isomorphism cannot map a well-ordered set onto a proper initial segment of itself. Thus $$f$$ is a functional, injective, order-preserving map whose domain and range are initial segments of $$X$$ and $$Y$$.

If $$\operatorname{dom} f \neq X$$ and $$\operatorname{ran} f \neq Y$$, let $$x_0 := \min(X \setminus \operatorname{dom} f)$$ and $$y_0 := \min(Y \setminus \operatorname{ran} f)$$. Then:
$$
\operatorname{dom} f = X_{x_0} \quad \text{and} \quad \operatorname{ran} f = Y_{y_0} \implies \mathrm{X}_{x_0} \cong_{\operatorname{Ord}} \mathrm{Y}_{y_0} \implies (x_0, y_0) \in f
$$
contradicting $$x_0 \notin \operatorname{dom} f$$. Thus $$\operatorname{dom} f = X$$ or $$\operatorname{ran} f = Y$$:
* $$\operatorname{dom} f = X \land \operatorname{ran} f = Y \implies \mathrm{X} \cong_{\operatorname{Ord}} \mathrm{Y}$$
* $$\operatorname{dom} f = X \land \operatorname{ran} f = Y_{y_0} \implies \mathrm{X} \sqsubset \mathrm{Y}$$
* $$\operatorname{dom} f = X_{x_0} \land \operatorname{ran} f = Y \implies \mathrm{Y} \sqsubset \mathrm{X}$$

<div style="text-align: right;">$$\boldsymbol{Q.E.D.}$$</div>

</details>

---

<h4 id="ordinal-subset-in">Strict Inclusion and Membership of Ordinals</h4>

> **Theorem:** Let $$\alpha, \beta$$ be [ordinals](/definitions/#def-ordinals). Then $$\alpha \subset \beta \implies \alpha \in \beta$$.

<details class="border rounded p-3 my-3" markdown="1">
<summary style="cursor: pointer;"><b>Proof</b> <span class="text-muted font-italic">(click to reveal)</span></summary>

Let $$\gamma := \min(\beta \setminus \alpha)$$. Then $$\gamma \subseteq \alpha$$. 

Pick any $$\delta \in \alpha$$. By totality of ordinals, either $$\gamma \le \delta$$ or $$\delta < \gamma$$. If $$\gamma \le \delta$$, then $$\gamma \in \delta \lor \gamma = \delta$$. Since $$\alpha$$ is transitive, both imply $$\gamma \in \alpha$$, contradicting that $$\gamma \in \beta \setminus \alpha$$.

Therefore $$\delta \in \gamma$$ for all $$\delta \in \alpha$$, which gives $$\alpha \subseteq \gamma$$. Combined with $$\gamma \subseteq \alpha$$, we have $$\alpha = \gamma \in \beta$$.

<div style="text-align: right;">$$\boldsymbol{Q.E.D.}$$</div>

</details>

---

<h4 id="burali-forti">Extended Burali-Forti Theorem</h4>

> **Theorem:** Let $$A$$ be a subclass of $$\mathbf{Ord}$$ that is [not bounded above](/definitions/#def-order-boundedness) in $$\mathbf{Ord}$$. Then $$A$$ is a [proper class](/definitions/#def-classes-universe).

<details class="border rounded p-3 my-3" markdown="1">
<summary style="cursor: pointer;"><b>Proof</b> <span class="text-muted font-italic">(click to reveal)</span></summary>

Suppose for contradiction that $$A$$ is a set. 

Then by the properties of ordinals, $$\sup A$$ exists and is an ordinal, so $$\sup A + 1 \in \mathbf{Ord}$$. 

Since $$A$$ is unbounded in $$\mathbf{Ord}$$, there exists some $$a \in A$$ such that $$\sup A + 1 < a$$. But $$\sup A$$ is an upper bound on $$A$$, so $$a \le \sup A < \sup A + 1$$, a contradiction.

<div style="text-align: right;">$$\boldsymbol{Q.E.D.}$$</div>

</details>

---

<h4 id="woset-to-ordinal">Isomorphism of Well-Orderings to Unique Ordinals</h4>

> **Theorem:** Let $$(X, \le)$$ be a [well-ordered set](/definitions/#def-well-ordering). Then there exists a unique [ordinal number](/definitions/#def-ordinals) $$\alpha$$ such that $$(X, \le) \cong_{\operatorname{Ord}} (\alpha, \in)$$.

<details class="border rounded p-3 my-3" markdown="1">
<summary style="cursor: pointer;"><b>Proof</b> <span class="text-muted font-italic">(click to reveal)</span></summary>

Uniqueness follows from [Uniqueness of Order Automorphisms](#woset-automorphism).

Given a well-ordered set $$X$$, define the class function:
$$
F(x) := \alpha \iff (X, \le)_x \cong_{\operatorname{Ord}} (\alpha, \in)
$$
If such an $$\alpha$$ exists, it is unique. By the Axiom of Replacement, $$F(X)$$ is a set of ordinals. 

Such an $$\alpha$$ exists for every $$x \in X$$ (otherwise, consider the least $$x \in X$$ for which it does not). The set $$F(X)$$ is an initial segment of $$\mathbf{Ord}$$. 

Let $$\gamma := \min(\mathbf{Ord} \setminus F(X))$$, which exists by the well-foundedness of the class $$\mathbf{Ord}$$. Then $$F(X) = \gamma \in \mathbf{Ord}$$, and $$F$$ defines an order isomorphism $$(X, \le) \cong_{\operatorname{Ord}} (\gamma, \in)$$.

<div style="text-align: right;">$$\boldsymbol{Q.E.D.}$$</div>

</details>

---

### The Axiom of Choice Cycle

<h4 id="hausdorff-maximal-principle">Hausdorff's Maximal Principle (The Tower Construction)</h4>

> **Theorem (Hausdorff):** Let $$(X, \le)$$ be a [partially ordered set](/definitions/#def-poset). Then there exists a [maximal chain](/definitions/#def-chain) in $$X$$.

<details class="border rounded p-3 my-3" markdown="1">
<summary style="cursor: pointer;"><b>Proof (Zermelo-Kneser Tower Construction)</b> <span class="text-muted font-italic">(click to reveal)</span></summary>

From the Axiom of Choice ($$\mathbf{AC}$$), let $$g \colon \mathcal{P}(X) \setminus \{\emptyset\} \longrightarrow X$$ be a choice function. 

For any chain $$A \subseteq X$$, define the set of candidate extensions:
$$
E_A := \{x \in X \setminus A \mid A \cup \{x\} \text{ is a chain}\}
$$
Define $$f \colon \operatorname{Chains}(X) \longrightarrow \operatorname{Chains}(X)$$ by:
$$
f(A) := \begin{cases} A \cup \{g(E_A)\} & \text{if } E_A \ne \emptyset, \\ A & \text{if } E_A = \emptyset. \end{cases}
$$
Notice that $$A$$ is a maximal chain in $$X$$ if and only if $$f(A) = A$$.

We call a subcollection $$\mathcal{I} \subseteq \operatorname{Chains}(X)$$ a **tower** if:
1. $$\emptyset \in \mathcal{I}$$,
2. $$A \in \mathcal{I} \rightarrow f(A) \in \mathcal{I}$$,
3. If $$\mathcal{C} \subseteq \mathcal{I}$$ is a chain under inclusion $$\subseteq$$, then $$\bigcup \mathcal{C} \in \mathcal{I}$$.

Towers exist because $$\operatorname{Chains}(X)$$ is itself a tower. Let $$\mathcal{I}_0$$ be the intersection of all towers; it is the minimal tower.

An element $$A \in \mathcal{I}_0$$ is defined to be **comparable** if $$\forall B \in \mathcal{I}_0 \ (A \subseteq B \lor B \subseteq A)$$. Fix a comparable element $$A \in \mathcal{I}_0$$ (such as $$\emptyset$$), and define:
$$
\mathcal{A}_A := \{B \in \mathcal{I}_0 \mid f(A) \subseteq B \lor B \subseteq A\}
$$
One verifies that $$\mathcal{A}_A$$ is a tower, so by minimality, $$\mathcal{A}_A = \mathcal{I}_0$$. 

Now define $$\mathcal{B} := \{A \in \mathcal{I}_0 \mid A \text{ is comparable}\}$$. Because $$\mathcal{A}_A = \mathcal{I}_0$$ for every comparable $$A$$, $$\mathcal{B}$$ is also a tower, meaning $$\mathcal{B} = \mathcal{I}_0$$.

Hence, every element of $$\mathcal{I}_0$$ is comparable, so $$\mathcal{I}_0$$ is itself a chain. By condition 3 of towers, $$M := \bigcup \mathcal{I}_0 \in \mathcal{I}_0$$. Applying condition 2 gives $$f(M) \in \mathcal{I}_0$$, so $$f(M) \subseteq M$$. Since $$M \subseteq f(M)$$, we have $$f(M) = M$$, proving that $$M$$ is a maximal chain.

<div style="text-align: right;">$$\boldsymbol{Q.E.D.}$$</div>

</details>

---

<h4 id="zorns-lemma">Zorn's Lemma</h4>

> **Theorem (Zorn):** If every [chain](/definitions/#def-chain) in a non-empty [partially ordered set](/definitions/#def-poset) $$X$$ has an [upper bound](/definitions/#def-bounds-min-max), then $$X$$ has a [maximal element](/definitions/#def-bounds-min-max).

<details class="border rounded p-3 my-3" markdown="1">
<summary style="cursor: pointer;"><b>Proof</b> <span class="text-muted font-italic">(click to reveal)</span></summary>

Let $$X$$ be a non-empty partially ordered set in which every chain has an upper bound. 

By the [Hausdorff Maximal Principle](#hausdorff-maximal-principle), there exists a maximal chain $$\mathcal{C} \subseteq X$$. By hypothesis, let $$m \in X$$ be an upper bound of $$\mathcal{C}$$. 

If there existed $$x \in X$$ with $$m < x$$, then $$\mathcal{C} \cup \{x\}$$ would be a chain strictly containing $$\mathcal{C}$$, contradicting the maximality of $$\mathcal{C}$$. Hence $$m$$ is a maximal element of $$X$$.

<div style="text-align: right;">$$\boldsymbol{Q.E.D.}$$</div>

</details>

---

<h4 id="well-ordering-theorem">Zermelo's Well-Ordering Theorem</h4>

> **Theorem (Zermelo):** Every set $$X$$ can be [well-ordered](/definitions/#def-well-ordering).

<details class="border rounded p-3 my-3" markdown="1">
<summary style="cursor: pointer;"><b>Proof</b> <span class="text-muted font-italic">(click to reveal)</span></summary>

Let $$X$$ be any set. Define:
$$
\mathcal{A} := \{R \subseteq X \times X \mid R \text{ is a well-ordering of } \operatorname{dom} R\}
$$
Partially order $$\mathcal{A}$$ by initial segments: $$R \le S \iff (\operatorname{dom} R, R) \sqsubseteq (\operatorname{dom} S, S)$$. 

The empty relation is a well-ordering of $$\emptyset$$, so $$\mathcal{A} \ne \emptyset$$. For any chain $$\mathcal{C} \subseteq \mathcal{A}$$, its union $$\bigcup \mathcal{C}$$ is an upper bound of $$\mathcal{C}$$ in $$\mathcal{A}$$. 

By [Zorn's Lemma](#zorns-lemma), let $$R$$ be a maximal element of $$\mathcal{A}$$. If $$\operatorname{dom} R \ne X$$, pick $$x \in X \setminus \operatorname{dom} R$$ and extend $$R$$ by declaring $$y < x$$ for all $$y \in \operatorname{dom} R$$. This strictly extends $$R$$ as a well-ordering, contradicting its maximality. Hence $$\operatorname{dom} R = X$$, and $$R$$ is a well-ordering of $$X$$.

<div style="text-align: right;">$$\boldsymbol{Q.E.D.}$$</div>

</details>

---

<h4 id="wo-implies-ac">Equivalence: WO implies AC</h4>

> **Theorem:** In $$\mathrm{ZF}^-$$, the [Well-Ordering Theorem](#well-ordering-theorem) implies the [Axiom of Choice](/definitions/#def-choice-zfc) ($$\mathbf{WO} \implies \mathbf{AC}$$).

<details class="border rounded p-3 my-3" markdown="1">
<summary style="cursor: pointer;"><b>Proof</b> <span class="text-muted font-italic">(click to reveal)</span></summary>

Let $$\mathcal{A}$$ be a set of non-empty sets. 

By the [Well-Ordering Theorem](#well-ordering-theorem), there exists a well-ordering $$\le$$ of the union $$\bigcup \mathcal{A}$$. 

Define the choice function $$f \colon \mathcal{A} \longrightarrow \bigcup \mathcal{A}$$ by:
$$
f(A) := \min_\le A
$$
Because every $$A \in \mathcal{A}$$ is a non-empty subset of a well-ordered set, $$\min_\le A$$ exists and is unique. Hence $$f$$ is a choice function.

<div style="text-align: right;">$$\boldsymbol{Q.E.D.}$$</div>

</details>

---

### Cardinality & The Continuum

<h4 id="schroder-bernstein">The Schröder–Bernstein Theorem</h4>

> **Theorem:** Let $$A$$ and $$B$$ be sets. If there exist [injections](/definitions/#def-injection) $$f \colon A \longrightarrow B$$ and $$g \colon B \longrightarrow A$$, then there exists a [bijection](/definitions/#def-bijection) $$h \colon A \longrightarrow B$$.

<details class="border rounded p-3 my-3" markdown="1">
<summary style="cursor: pointer;"><b>Proof 1: Set Cascade and Diagram Chase (König 1906)</b> <span class="text-muted font-italic">(click to reveal)</span></summary>

We first consider the case when $$B \subseteq A$$. Define:
$$
\begin{cases} A_0 := A \setminus B, \\ A_{n + 1} := f(A_n) \end{cases}, \qquad C := \bigcup_{n \in \mathbb{N}} A_n \qquad \text{and} \qquad h(x) := \begin{cases} f(x) & \text{if } x \in C, \\ x & \text{if } x \notin C. \end{cases}
$$
Of course, $$h \colon A \longrightarrow B$$. Breaking down $$h(x) = h(y)$$ into cases where both belong to $$C$$, neither does, or exactly one does shows that $$h$$ is an injection. It is just as simple to show that $$B \setminus C \subseteq \operatorname{ran} h$$ and $$B \cap C \subseteq \operatorname{ran} h$$, establishing surjectivity and finishing this case.

---

For $$B \not\subseteq A$$, we consider the following commutative diagram:

<div class="text-center my-3">
  <img src="{{ '/assets/img/schroder_bernstein_diagram.svg' | relative_url }}" class="img-fluid" style="max-width: 75%; height: auto;" alt="Schröder-Bernstein Diagram">
</div>

Since $$g$$ is injective, it is bijective onto its range $$g(B) \subseteq A$$. Applying the previous case to $$A$$ and $$g(B)$$ with injections $$g \circ f$$ and inclusion $$\iota$$ yields a bijection $$h \colon A \longrightarrow g(B)$$. Thus $$g^{-1} \circ h \colon A \longrightarrow B$$ is a bijection.

<div style="text-align: right;">$$\boldsymbol{Q.E.D.}$$</div>

</details>

<details class="border rounded p-3 my-3" markdown="1">
<summary style="cursor: pointer;"><b>Proof 2: Structural Fixed-Point on 𝒫(A) (via Knaster–Tarski)</b> <span class="text-muted font-italic">(click to reveal)</span></summary>

Consider the power set lattice $$(\mathcal{P}(A), \subseteq)$$, which is complete. Define the mapping $$F \colon \mathcal{P}(A) \longrightarrow \mathcal{P}(A)$$ by:
$$
F(X) := A \setminus g(B \setminus f(X))
$$
Let $$X \subseteq Y \subseteq A$$. Since direct images preserve inclusion and complements reverse inclusion:
$$
f(X) \subseteq f(Y) \implies B \setminus f(Y) \subseteq B \setminus f(X) \implies g(B \setminus f(Y)) \subseteq g(B \setminus f(X))
$$
Taking the complement in $$A$$ reverses inclusion once more:
$$
A \setminus g(B \setminus f(X)) \subseteq A \setminus g(B \setminus f(Y)) \iff F(X) \subseteq F(Y)
$$
Thus $$F$$ is monotone. By the [Knaster–Tarski Theorem](#knaster-tarski), $$F$$ has a fixed point $$S \subseteq A$$:
$$
S = A \setminus g(B \setminus f(S)) \iff A \setminus S = g(B \setminus f(S))
$$
Since $$f$$ is injective, $$f \vert_S \colon S \longrightarrow f(S)$$ is a bijection. Since $$g$$ is injective, it maps $$B \setminus f(S)$$ bijectively onto $$A \setminus S$$, so $$g^{-1} \colon A \setminus S \longrightarrow B \setminus f(S)$$ is a bijection.

Define $$h \colon A \longrightarrow B$$ by:
$$
h(x) := \begin{cases} f(x) & \text{if } x \in S, \\ g^{-1}(x) & \text{if } x \in A \setminus S. \end{cases}
$$
Because $$S$$ and $$A \setminus S$$ partition $$A$$, and $$f(S)$$ and $$B \setminus f(S)$$ partition $$B$$, $$h$$ is a bijection.

<div style="text-align: right;">$$\boldsymbol{Q.E.D.}$$</div>

</details>

---

<h4 id="cantors-theorem">Cantor's Theorem on the Power Set</h4>

> **Theorem:** For any set $$A$$, $$\vert A \vert < \vert \mathcal{P}(A) \vert$$.

<details class="border rounded p-3 my-3" markdown="1">
<summary style="cursor: pointer;"><b>Proof</b> <span class="text-muted font-italic">(click to reveal)</span></summary>

It suffices to show that there exists no surjection $$f \colon A \longrightarrow \mathcal{P}(A)$$. 

Suppose for contradiction that such a surjection exists and define a set:
$$
B := \{x \in A \mid x \notin f(x)\}
$$
Then $$B = f(a)$$ for some $$a \in A$$, so:
$$
a \in B \iff a \notin f(a) \iff a \notin B
$$
which is a contradiction.

<div style="text-align: right;">$$\boldsymbol{Q.E.D.}$$</div>

</details>

---

<h4 id="hessenbergs-theorem">Hessenberg's Theorem on Cardinal Arithmetic</h4>

> **Theorem:** For any [infinite cardinals](/definitions/#def-cardinal-numbers) $$\kappa$$ and $$\lambda$$:
> $$
> \kappa + \lambda = \kappa \cdot \lambda = \max\{\kappa, \lambda\}
> $$

<details class="border rounded p-3 my-3" markdown="1">
<summary style="cursor: pointer;"><b>Proof</b> <span class="text-muted font-italic">(click to reveal)</span></summary>

It suffices to prove that $$\kappa \cdot \kappa = \kappa$$.

Assume by transfinite induction that $$\alpha \cdot \alpha = \alpha$$ holds for all infinite cardinals $$\alpha < \kappa$$. Define the max-lexicographic well-ordering $$\prec$$ on $$\kappa \times \kappa$$:
$$
(\alpha, \beta) \prec (\gamma, \delta) \iff \begin{cases} \max\{\alpha, \beta\} < \max\{\gamma, \delta\}, \text{ or} \\ \max\{\alpha, \beta\} = \max\{\gamma, \delta\} \land \alpha < \gamma, \text{ or} \\ \max\{\alpha, \beta\} = \max\{\gamma, \delta\} \land \alpha = \gamma \land \beta < \delta. \end{cases}
$$
For any $$(\alpha, \beta) \in \kappa \times \kappa$$, let $$\gamma := \max\{\alpha, \beta\} < \kappa$$. The initial segment of $$(\alpha, \beta)$$ is contained in $$(\gamma + 1) \times (\gamma + 1)$$. By induction, $$\vert (\gamma + 1) \times (\gamma + 1) \vert = \vert \gamma + 1 \vert < \kappa$$. 

Thus every proper initial segment of $$(\kappa \times \kappa, \prec)$$ has cardinality strictly less than $$\kappa$$, so its order type cannot reach $$\kappa^+$$, implying $$\vert \kappa \times \kappa \vert \le \kappa$$. By the diagonal injection $$\kappa \hookrightarrow \kappa \times \kappa$$, we conclude $$\kappa \cdot \kappa = \kappa$$.

<div style="text-align: right;">$$\boldsymbol{Q.E.D.}$$</div>

</details>

---

<h4 id="cardinal-existence">Existence of Cardinal Numbers</h4>

> **Theorem:** In $$\mathrm{ZFC}^-$$, for every set $$A$$, the [cardinal number](/definitions/#def-cardinal-numbers) $$\vert A \vert$$ exists.

<details class="border rounded p-3 my-3" markdown="1">
<summary style="cursor: pointer;"><b>Proof</b> <span class="text-muted font-italic">(click to reveal)</span></summary>

Let $$A$$ be any set. 

By the [Well-Ordering Theorem](#well-ordering-theorem), which holds in $$\mathrm{ZFC}^-$$, there exists a well-ordering $$\le$$ of the set $$A$$.

By the [Ordinal Representation Theorem](#woset-to-ordinal), every well-ordered set is order-isomorphic to a unique ordinal number:
$$
(A, \le) \cong_{\operatorname{Ord}} (\alpha, \in) \quad \text{for some } \alpha \in \mathbf{Ord}
$$
Because an order-isomorphism is a bijection, $$A \sim \alpha$$.

The collection of all ordinals equinumerous to $$A$$ is non-empty (since $$\alpha$$ belongs to it). By the well-foundedness of the class $$\mathbf{Ord}$$, the non-empty class:
$$
\{\beta \in \mathbf{Ord} \mid \beta \sim A\}
$$
possesses an $$\in$$-minimal element. We define this minimal initial ordinal to be the cardinality of $$A$$:
$$
\vert A \vert := \min \{\beta \in \mathbf{Ord} \mid \beta \sim A\}
$$
Hence, every set has a well-defined cardinal number.

<div style="text-align: right;">$$\boldsymbol{Q.E.D.}$$</div>

</details>

---

<h4 id="reals-and-power-set">Equinumerosity of ℝ and 𝒫(ℕ)</h4>

> **Theorem:** $$\mathbb{R} \sim \mathcal{P}(\mathbb{N})$$, and consequently $$\mathbb{R}$$ is uncountable ($$\vert\mathbb{R}\vert = \mathfrak{c}$$).

<details class="border rounded p-3 my-3" markdown="1">
<summary style="cursor: pointer;"><b>Proof</b> <span class="text-muted font-italic">(click to reveal)</span></summary>

We construct injections in both directions:

1. Define $$f \colon \mathcal{P}(\mathbb{N}) \longrightarrow \mathbb{R}$$ by $$f(S) := \sum_{n \in S} \frac{2}{3^{n+1}}$$. Ternary expansions with digits in $$\{0, 2\}$$ avoid dual representations, so $$f$$ is injective.
2. Define $$g \colon \mathbb{R} \longrightarrow \mathcal{P}(\mathbb{Q})$$ by $$g(x) := \{q \in \mathbb{Q} \mid q < x\}$$. Density of $$\mathbb{Q}$$ implies $$g$$ is injective. Since $$\mathbb{Q} \sim \mathbb{N}$$, this induces an injection into $$\mathcal{P}(\mathbb{N})$$.

By the [Schröder–Bernstein Theorem](#schroder-bernstein), $$\mathbb{R} \sim \mathcal{P}(\mathbb{N})$$. By [Cantor's Theorem](#cantors-theorem), $$\mathbb{R} \nsim \mathbb{N}$$.

<div style="text-align: right;">$$\boldsymbol{Q.E.D.}$$</div>

</details>

---

<h4 id="real-plane-dimension">The Dimension Paradox: ℝ ~ ℝ²</h4>

> **Theorem:** $$\mathbb{R} \sim \mathbb{R}^2$$.

<details class="border rounded p-3 my-3" markdown="1">
<summary style="cursor: pointer;"><b>Proof</b> <span class="text-muted font-italic">(click to reveal)</span></summary>

By cardinal arithmetic:
$$
\vert \mathbb{R}^2 \vert = \vert \mathbb{R} \times \mathbb{R} \vert = \mathfrak{c} \cdot \mathfrak{c} = 2^{\aleph_0} \cdot 2^{\aleph_0} = 2^{\aleph_0 + \aleph_0} = 2^{\aleph_0} = \mathfrak{c} = \vert \mathbb{R} \vert
$$
where $$2^\kappa \cdot 2^\lambda = 2^{\kappa + \lambda}$$ and $$\aleph_0 + \aleph_0 = \aleph_0$$.

<div style="text-align: right;">$$\boldsymbol{Q.E.D.}$$</div>

</details>

---

<h4 id="real-interval-bijection">Scale Invariance: (0, 1) ~ ℝ</h4>

> **Theorem:** $$(0, 1) \sim \mathbb{R}$$.

<details class="border rounded p-3 my-3" markdown="1">
<summary style="cursor: pointer;"><b>Proof</b> <span class="text-muted font-italic">(click to reveal)</span></summary>

Define $$f \colon (0, 1) \longrightarrow \mathbb{R}$$ by:
$$
f(x) := \tan\left(\pi\left(x - \frac{1}{2}\right)\right)
$$
Because the tangent function is continuous and strictly increasing on $$(-\frac{\pi}{2}, \frac{\pi}{2})$$ with range $$(-\infty, \infty)$$, $$f$$ is a bijection.

<div style="text-align: right;">$$\boldsymbol{Q.E.D.}$$</div>

</details>

---

### Real Analysis

<h4 id="archimedean-property">The Archimedean Property</h4>

> **Theorem:** $$\forall x, y \in \mathbb{R} \ (x > 0 \rightarrow \exists n \in \mathbb{N} \ nx > y)$$.

<details class="border rounded p-3 my-3" markdown="1">
<summary style="cursor: pointer;"><b>Proof</b> <span class="text-muted font-italic">(click to reveal)</span></summary>

Suppose for contradiction that there exist $$x, y \in \mathbb{R}$$ with $$x > 0$$ such that for all $$n \in \mathbb{N}$$, $$nx \le y$$. 

Define $$S := \{nx \mid n \in \mathbb{N}\}$$. Since $$x \in S$$, $$S \ne \emptyset$$, and $$S$$ is bounded from above by $$y$$. 

By the Completeness Axiom, let $$\alpha := \sup S \in \mathbb{R}$$. Since $$x > 0$$, $$\alpha - x < \alpha$$, so $$\alpha - x$$ is not an upper bound of $$S$$. Pick $$m \in \mathbb{N}$$ such that $$mx > \alpha - x$$. Then $$(m + 1)x > \alpha$$. Since $$m + 1 \in \mathbb{N}$$, $$(m + 1)x \in S$$, which contradicts that $$\alpha$$ is an upper bound of $$S$$.

<div style="text-align: right;">$$\boldsymbol{Q.E.D.}$$</div>

</details>

---

<h4 id="density-of-rationals">Density of ℚ in ℝ</h4>

> **Theorem:** $$\forall x, y \in \mathbb{R} \ (x < y \rightarrow \exists q \in \mathbb{Q} \ x < q < y)$$.

<details class="border rounded p-3 my-3" markdown="1">
<summary style="cursor: pointer;"><b>Proof</b> <span class="text-muted font-italic">(click to reveal)</span></summary>

Assume without loss of generality that $$0 \le x < y$$. 

Since $$y - x > 0$$, by the [Archimedean Property](#archimedean-property) pick $$n \in \mathbb{N}$$ such that $$n(y - x) > 1$$, so $$ny - nx > 1$$. By well-ordering of $$\mathbb{N}$$, let $$m := \min \{k \in \mathbb{N} \mid k > nx\}$$. Then $$m - 1 \le nx < m$$, so $$m \le nx + 1 < ny$$. 

Thus $$nx < m < ny$$, and dividing by $$n > 0$$ yields $$x < \frac{m}{n} < y$$. Take $$q := \frac{m}{n} \in \mathbb{Q}$$.

<div style="text-align: right;">$$\boldsymbol{Q.E.D.}$$</div>

</details>

---

### Theory of Computation

<h4 id="semidecidability-enumeration">Semidecidability and Dovetailing Enumeration</h4>

> **Theorem:** A set $$A \subseteq \mathbb{N}$$ is [semidecidable](/definitions/#def-semidecidability) if and only if it can be [enumerated](/definitions/#def-enumeration) by an algorithm.

<details class="border rounded p-3 my-3" markdown="1">
<summary style="cursor: pointer;"><b>Proof</b> <span class="text-muted font-italic">(click to reveal)</span></summary>

($$\implies$$) Let $$X$$ be an algorithm that semidecides $$A$$. We construct an enumerator $$E$$ that searches the space $$\mathbb{N} \times \mathbb{N}$$ via dovetailing (step-bounding) to prevent divergence on non-halting inputs:

```text
b = 0
while True:
    for num from 0 to b:
        Simulate X on input 'num' for b steps
        if X halted and answered Yes:
            print num
    b = b + 1
```

If $$a \in A$$, the semidecision algorithm $$X(a)$$ halts in some finite number of steps $$k$$. For every step-bound $$b \ge \max\{a, k\}$$, the outer loop reaches $$(a, b)$$ in finite time and prints $$a$$. Conversely, if $$a \notin A$$, $$X(a)$$ never halts with Yes, so $$a$$ is never printed.

($$\impliedby$$) Let $$Y$$ be an algorithm that enumerates $$A$$. We construct a semidecision algorithm for $$A$$: on input $$n$$, execute $$Y$$ and monitor its output stream. If $$n$$ is ever printed, halt and output **Yes**; otherwise, continue running indefinitely.

<div style="text-align: right;">$$\boldsymbol{Q.E.D.}$$</div>

</details>

---

<h4 id="kleene-theorem">Kleene's Post Theorem on Decidability</h4>

> **Theorem (Kleene):** A set $$A \subseteq \mathbb{N}$$ is [decidable](/definitions/#def-decidability) if and only if both $$A$$ and $$A^c$$ are [semidecidable](/definitions/#def-semidecidability).

<details class="border rounded p-3 my-3" markdown="1">
<summary style="cursor: pointer;"><b>Proof</b> <span class="text-muted font-italic">(click to reveal)</span></summary>

($$\implies$$) If $$A$$ is decidable, there exists a decider $$M$$ that halts on every input $$n \in \mathbb{N}$$, answering Yes or No.
* A semidecider for $$A$$ runs $$M(n)$$; if $$M$$ outputs Yes, it halts with Yes; if $$M$$ outputs No, it loops indefinitely.
* A semidecider for $$A^c$$ runs $$M(n)$$; if $$M$$ outputs No, it halts with Yes; if $$M$$ outputs Yes, it loops indefinitely.

($$\impliedby$$) Let $$M_1$$ be a semidecider for $$A$$, and let $$M_2$$ be a semidecider for $$A^c$$. We construct a total decider $$M$$ for $$A$$:

On input $$n$$, simulate $$M_1(n)$$ and $$M_2(n)$$ in parallel by alternating execution steps (one step of $$M_1$$, then one step of $$M_2$$).

Because $$A \cup A^c = \mathbb{N}$$ and $$A \cap A^c = \emptyset$$, for any input $$n$$, exactly one of the two conditions holds:
* If $$n \in A$$, $$M_1(n)$$ halts in finite time: halt the simulation and output **Yes**.
* If $$n \notin A$$, then $$n \in A^c$$, so $$M_2(n)$$ halts in finite time: halt the simulation and output **No**.

Because one branch is guaranteed to halt in finite time, $$M$$ is a total decision algorithm. Hence $$A$$ is decidable.

<div style="text-align: right;">$$\boldsymbol{Q.E.D.}$$</div>

</details>

---

<h4 id="semidecidable-closure">Closure Properties of Semidecidable Sets</h4>

> **Theorem:** If $$A, B \subseteq \mathbb{N}$$ are semidecidable, then $$A \cup B$$ and $$A \cap B$$ are semidecidable.

<details class="border rounded p-3 my-3" markdown="1">
<summary style="cursor: pointer;"><b>Proof</b> <span class="text-muted font-italic">(click to reveal)</span></summary>

Let $$A, B \subseteq \mathbb{N}$$ be semidecidable, with semideciders $$M_A$$ and $$M_B$$.

1. **Closure under Union ($$A \cup B$$):**  
   On input $$n$$, simulate $$M_A(n)$$ and $$M_B(n)$$ in parallel by alternating execution steps. If either machine halts and outputs Yes, halt immediately and output **Yes**. If $$n \in A \cup B$$, at least one simulation halts in finite time; if $$n \notin A \cup B$$, both run indefinitely.
2. **Closure under Intersection ($$A \cap B$$):**  
   On input $$n$$, sequentially execute $$M_A(n)$$. If it halts and outputs Yes, execute $$M_B(n)$$. If both halt with Yes, output **Yes**. If either input fails to belong to the respective set, the sequential execution never completes.

<div style="text-align: right;">$$\boldsymbol{Q.E.D.}$$</div>

</details>
