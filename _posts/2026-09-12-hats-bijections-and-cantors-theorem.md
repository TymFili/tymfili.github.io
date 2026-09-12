---
layout: post
title: "What Does it Mean to Count?"
date: 2026-09-12
description: "Equinumerosity, bijections, and Cantor's theorem on the power set."
tags: [set-theory, discrete-mathematics, logic]
categories: [mathematics]
---

### 1. Equinumerosity and Countability

Two sets $$A$$ and $$B$$ are equinumerous, denoted $$A \sim B$$, if there exists a bijection $$f \colon A \longrightarrow B$$. Equinumerosity is an equivalence relation.

> **Intuition:** If you have 7 people and 7 hats, placing one hat on each head establishes equinumerosity without needing to count sequentially.

* **Definition:** A set $$A$$ is *countable* if $$A$$ is finite or $$A \sim \mathbb{N}$$.
* **Theorem:** A set $$A$$ is countable if and only if there exists an injection $$f \colon A \longrightarrow \mathbb{N}$$.

---

### 2. Cantor's Theorem

> **Theorem (Cantor):** For any set $$A$$, there exists no surjection $$f \colon A \longrightarrow \mathcal{P}(A)$$.

**Proof:**  
Suppose for contradiction that such a surjection exists. Define the set:
$$
B := \{x \in A \mid x \notin f(x)\}
$$

Since $$f$$ is surjective, $$B = f(a)$$ for some $$a \in A$$. Then:
$$
a \in B \iff a \notin f(a) \iff a \notin B
$$
which is a contradiction. Hence no surjection exists, and $$A \not\sim \mathcal{P}(A)$$. <span style="float: right;"><b><i>Q.E.D.</i></b></span>

---

### 3. Examples

1. $$\mathbb{N}$$ is countable via the identity map $$\operatorname{id}_{\mathbb{N}}$$.
2. $$\mathbb{Z}$$ is countable by interleaving:
   $$
   f(0) = 0, \quad f(1) = 1, \quad f(2) = -1, \quad f(3) = 2, \quad f(4) = -2, \quad \dots
   $$
   explicitly:
   $$
   f(n) = \begin{cases} \frac{n+1}{2} & \text{if } n \text{ is odd}, \\ -\frac{n}{2} & \text{if } n \text{ is even}. \end{cases}
   $$
3. $$\mathbb{R}$$ is uncountable (via diagonalisation).

---

### 4. Exercise

Let $$\Sigma = \{0, 1\}$$, and let $$\Sigma^*$$ denote the set of finite strings over $$\Sigma$$. Prove that $$\Sigma^*$$ is countable by constructing an explicit enumeration.
