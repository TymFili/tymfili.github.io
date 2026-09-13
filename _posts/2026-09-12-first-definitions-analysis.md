---
layout: post
title: "The ε–N Definition as a Two-Player Game"
date: 2026-09-12
description: "The least upper bound property of ℝ and viewing Cauchy convergence as an interactive game."
tags: [analysis, mathematics, teaching]
categories: [mathematics]
---

### 1. The Completeness Axiom

The set of rational numbers $$\mathbb{Q}$$ is countable, yet between any two rationals lies another. Despite this density, $$\mathbb{Q}$$ has gaps: the sequence of decimal approximations of $$\sqrt{2}$$:

$$
1, \quad \frac{14}{10}, \quad \frac{141}{100}, \quad \frac{1414}{1000}, \quad \frac{14142}{10000}, \quad \dots
$$

consists entirely of rational numbers, but has no limit in $$\mathbb{Q}$$.

> **Axiom (Completeness):** If $$\emptyset \ne A \subseteq \mathbb{R}$$ is bounded from above, then:
>
> $$
> \sup A \in \mathbb{R}
> $$

This axiom distinguishes $$\mathbb{R}$$ from $$\mathbb{Q}$$. Two foundational consequences follow:

#### Theorem (Archimedean Property)
$$\forall x, y \in \mathbb{R} \ (x > 0 \rightarrow \exists n \in \mathbb{N} \ nx > y)$$

<details class="border rounded p-3 my-3" markdown="1">
<summary style="cursor: pointer;"><b>Proof</b> <span class="text-muted font-italic">(click to reveal)</span></summary>

{% include proofs/archimedean_property.md %}

</details>

---

#### Theorem (Density of $$\mathbb{Q}$$ in $$\mathbb{R}$$)
$$\forall x, y \in \mathbb{R} \ (x < y \rightarrow \exists q \in \mathbb{Q} \ x < q < y)$$

<details class="border rounded p-3 my-3" markdown="1">
<summary style="cursor: pointer;"><b>Proof</b> <span class="text-muted font-italic">(click to reveal)</span></summary>

{% include proofs/density_of_rationals.md %}

</details>

---

### 2. Convergence as a Two-Player Game

A real sequence is a function $$a \colon \mathbb{N} \longrightarrow \mathbb{R}$$, denoted $$a_n := a(n)$$.

> **Definition:** A sequence $$(a_n)$$ converges to $$L \in \mathbb{R}$$, written $$\lim_{n \to \infty} a_n = L$$, if:
>
> $$
> \forall \varepsilon > 0 \ \exists N \in \mathbb{N} \ \forall n \ge N \ \vert a_n - L \vert < \varepsilon
> $$

This definition can be formalised as an interactive game against an adversary:

1. The adversary challenges with a tolerance $$\varepsilon > 0$$.
2. You reply with an index threshold $$N \in \mathbb{N}$$.
3. The adversary selects any index $$n \ge N$$.
4. You win if $$\vert a_n - L \vert < \varepsilon$$, and lose otherwise.

The sequence converges to $$L$$ if and only if you possess a winning strategy: a function that computes a valid $$N$$ for any given $$\varepsilon$$.

---

### 3. Example

**Proposition:** $$\lim_{n \to \infty} \frac{3}{n} = 0$$.

**Proof:** Let $$\varepsilon > 0$$. By the Archimedean property, there exists $$N \in \mathbb{N}$$ such that $$N > \frac{3}{\varepsilon}$$. 

For every $$n \ge N$$, since $$n \ge 1 > 0$$, we have:
$$
0 < \frac{3}{n} \le \frac{3}{N} < \varepsilon
$$
Because $$\frac{3}{n} > 0$$, we have $$\left\vert \frac{3}{n} - 0 \right\vert = \frac{3}{n}$$. Thus:
$$
\left\vert \frac{3}{n} - 0 \right\vert < \varepsilon
$$

<div style="text-align: right;">$$\boldsymbol{Q.E.D.}$$</div>

---

### 4. Exercises

#### 1. Boundedness of Convergent Sequences
Prove that every convergent sequence is bounded.

<details class="border rounded p-3 my-3" markdown="1">
<summary style="cursor: pointer;"><b>Solution</b> <span class="text-muted font-italic">(click to reveal)</span></summary>

Let $$(a_n)$$ converge to $$L$$. Setting $$\varepsilon = 1$$ in the definition of convergence, there exists $$N \in \mathbb{N}$$ such that for all $$n \ge N$$:
$$
\vert a_n - L \vert < 1
$$
By the triangle inequality:
$$
\vert a_n \vert = \vert (a_n - L) + L \vert \le \vert a_n - L \vert + \vert L \vert < \vert L \vert + 1
$$
Thus, every term beyond index $$N$$ is strictly bounded by $$\vert L \vert + 1$$.

The initial segment $$\{a_1, \dots, a_{N-1}\}$$ is finite. Define:
$$
M := \max\left(\{\vert a_n \vert \mid n < N\} \cup \{\vert L \vert + 1\}\right)
$$
Then for every $$n \in \mathbb{N}$$, we have $$\vert a_n \vert \le M$$. Hence $$(a_n)$$ is bounded.

<div style="text-align: right;">$$\boldsymbol{Q.E.D.}$$</div>

</details>

---

#### 2. The Triangle Inequality (Abbott)
Prove that $$\vert x + y \vert \le \vert x \vert + \vert y \vert$$ by expanding $$(\vert x \vert + \vert y \vert)^2$$ and using the inequality $$ab \le \vert ab \vert$$.

<details class="border rounded p-3 my-3" markdown="1">
<summary style="cursor: pointer;"><b>Solution</b> <span class="text-muted font-italic">(click to reveal)</span></summary>

Since both sides are non-negative, the inequality is equivalent to comparing their squares:
$$
\vert x + y \vert \le \vert x \vert + \vert y \vert \iff \vert x + y \vert^2 \le (\vert x \vert + \vert y \vert)^2
$$
Expanding the right-hand side:
$$
(\vert x \vert + \vert y \vert)^2 = \vert x \vert^2 + 2\vert x \vert \vert y \vert + \vert y \vert^2 = x^2 + 2\vert xy \vert + y^2
$$
Expanding the left-hand side:
$$
\vert x + y \vert^2 = (x + y)^2 = x^2 + 2xy + y^2
$$
Because $$xy \le \vert xy \vert$$, we have $$2xy \le 2\vert xy \vert$$, and therefore:
$$
x^2 + 2xy + y^2 \le x^2 + 2\vert xy \vert + y^2 \implies \vert x + y \vert^2 \le (\vert x \vert + \vert y \vert)^2
$$
Taking positive square roots of both sides yields:
$$
\vert x + y \vert \le \vert x \vert + \vert y \vert
$$

<div style="text-align: right;">$$\boldsymbol{Q.E.D.}$$</div>

</details>

---

#### 3. The Squeeze Theorem
Suppose $$(x_n)$$ and $$(z_n)$$ both converge to $$L$$, and $$\forall n \in \mathbb{N} \ x_n \le y_n \le z_n$$. Prove that $$\lim_{n \to \infty} y_n = L$$.

<details class="border rounded p-3 my-3" markdown="1">
<summary style="cursor: pointer;"><b>Solution</b> <span class="text-muted font-italic">(click to reveal)</span></summary>

Let $$\varepsilon > 0$$. 

* Since $$\lim_{n \to \infty} x_n = L$$, there exists $$N_1 \in \mathbb{N}$$ such that for all $$n \ge N_1$$:
  $$
  \vert x_n - L \vert < \varepsilon \iff L - \varepsilon < x_n < L + \varepsilon
  $$
* Since $$\lim_{n \to \infty} z_n = L$$, there exists $$N_2 \in \mathbb{N}$$ such that for all $$n \ge N_2$$:
  $$
  \vert z_n - L \vert < \varepsilon \iff L - \varepsilon < z_n < L + \varepsilon
  $$

Define $$N := \max(N_1, N_2)$$. Then for every $$n \ge N$$:
$$
L - \varepsilon < x_n \le y_n \le z_n < L + \varepsilon
$$
In particular:
$$
L - \varepsilon < y_n < L + \varepsilon \iff -\varepsilon < y_n - L < \varepsilon \iff \vert y_n - L \vert < \varepsilon
$$
Hence $$\lim_{n \to \infty} y_n = L$$.

<div style="text-align: right;">$$\boldsymbol{Q.E.D.}$$</div>

</details>
