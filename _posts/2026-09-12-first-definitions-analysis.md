---
layout: post
title: "The real numbers, ε–N definition and quantifiers"
date: 2026-09-12
description: "The least upper bound property of ℝ and viewing Cauchy convergence as a game."
tags: [analysis, mathematics, teaching]
categories: [mathematics]
---

### 1. The Completeness Axiom

The set of rational numbers $$\mathbb{Q}$$ is countable, yet between any two rationals lies another. Despite this density, $$\mathbb{Q}$$ has gaps: the sequence of decimal approximations of $$\sqrt{2}$$:

$$
1, \quad \frac{14}{10}, \quad \frac{141}{100}, \quad \frac{1414}{1000}, \quad \frac{14142}{10000}, \quad \dots
$$

consists entirely of rational numbers, but has no limit in $$\mathbb{Q}$$.

> **Axiom (Completeness):** If $$\emptyset \neq A \subseteq \mathbb{R}$$, and $$A$$ is bounded from above, then:
>
> $$
> \sup A \in \mathbb{R}
> $$

This axiom distinguishes $$\mathbb{R}$$ from $$\mathbb{Q}$$. Two foundational consequences follow:

#### Theorem (Archimedean Property)
$$\forall x, y \in \mathbb{R} \ (x > 0 \rightarrow \exists n \in \mathbb{N} \ nx > y)$$

<details class="border rounded p-3 my-3" markdown="1">
<summary style="cursor: pointer;"><b>Proof</b> <span class="text-muted font-italic">(click to reveal)</span></summary>

Assume for contradiction that there exist $$x, y \in \mathbb{R}$$ with $$x > 0$$ such that for all $$n \in \mathbb{N}$$, $$nx \le y$$.

Define the collection of all natural multiples:
$$
S := \{nx \mid n \in \mathbb{N}\}
$$
Since $$x \in S$$, $$S \ne \emptyset$$, and by hypothesis, $$S$$ is bounded from above by $$y$$. 

By the Completeness Axiom, $$S$$ has a supremum in $$\mathbb{R}$$:
$$
\alpha := \sup S
$$
Since $$x > 0$$, we have $$\alpha - x < \alpha$$. Because $$\alpha$$ is the least upper bound, $$\alpha - x$$ cannot be an upper bound of $$S$$. Therefore, there exists some element $$mx \in S$$ such that:
$$
mx > \alpha - x
$$
Adding $$x$$ to both sides yields:
$$
(m + 1)x > \alpha
$$
Since $$m + 1 \in \mathbb{N}$$, we have $$(m + 1)x \in S$$. This contradicts that $$\alpha$$ is an upper bound of $$S$$. 

Hence, no such upper bound $$y$$ can exist:
$$
\exists n \in \mathbb{N} \ nx > y \tag*{$\boldsymbol{Q.E.D.}$}
$$
</details>

---

#### Theorem (Density of $$\mathbb{Q}$$ in $$\mathbb{R}$$)
$$\forall x, y \in \mathbb{R} \ (x < y \rightarrow \exists q \in \mathbb{Q} \ x < q < y)$$

<details class="border rounded p-3 my-3" markdown="1">
<summary style="cursor: pointer;"><b>Proof</b> <span class="text-muted font-italic">(click to reveal)</span></summary>

Assume without loss of generality that $$0 \le x < y$$. 

Since $$y - x > 0$$, by the Archimedean Property there exists $$n \in \mathbb{N}$$ such that:
$$
n(y - x) > 1 \iff ny - nx > 1
$$
Applying the Archimedean Property again to $$nx$$, the collection of natural numbers strictly greater than $$nx$$ is non-empty. By the well-ordering of $$\mathbb{N}$$, there exists a least integer $$m \in \mathbb{Z}$$ such that:
$$
m - 1 \le nx < m
$$
From $$nx < m$$, we have our lower bound. From $$m - 1 \le nx$$, adding $$1$$ gives:
$$
m \le nx + 1
$$
Because $$ny - nx > 1$$, we have $$nx + 1 < ny$$. Chaining these inequalities:
$$
nx < m \le nx + 1 < ny \implies nx < m < ny
$$
Dividing by $$n > 0$$:
$$
x < \frac{m}{n} < y
$$
Setting $$q := \frac{m}{n} \in \mathbb{Q}$$, we conclude:
$$
x < q < y \tag*{$\boldsymbol{Q.E.D.}$}
$$
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

**Proof:** Let $$\varepsilon > 0$$. By the Archimedean property, there exists $$N \in \mathbb{N}$$ such that $$N > \frac{3}{\varepsilon}$$. For every $$n \ge N$$:

$$
n \ge N > \frac{3}{\varepsilon} \rightarrow \frac{3}{n} \le \frac{3}{N} < \varepsilon
$$

Hence:

$$
\left\vert \frac{3}{n} - 0 \right\vert < \varepsilon \tag*{$\boldsymbol{Q.E.D.}$}
$$

---

### 4. Exercises

1. **Boundedness:** Prove that every convergent sequence is bounded.  
   *Hint:* Set $$\varepsilon = 1$$. Then $$\exists N \in \mathbb{N} \ \forall n \ge N \ \vert a_n \vert < \vert L \vert + 1$$. Take:

   $$
   M := \max\left(\{\vert a_n \vert \mid n < N\} \cup \{\vert L \vert + 1\}\right)
   $$

2. **Triangle Inequality (Abbott):** Prove that $$\vert x + y \vert \le \vert x \vert + \vert y \vert$$ by expanding $$(\vert x \vert + \vert y \vert)^2$$ and using $$ab \le \vert ab \vert$$.

3. **Squeeze Theorem:** Let $$x_n \le y_n \le z_n$$ for all $$n \in \mathbb{N}$$. If $$\lim_{n \to \infty} x_n = \lim_{n \to \infty} z_n = L$$, prove that $$\lim_{n \to \infty} y_n = L$$.
