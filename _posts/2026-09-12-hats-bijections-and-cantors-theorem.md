---
layout: post
title: "Hats, Bijections, and Cantor's Theorem: What Does it Mean to Count?"
date: 2026-09-12
description: "How Georg Cantor revolutionized our concept of infinity through bijective correspondences."
tags: [set-theory, discrete-mathematics, logic]
categories: [mathematics]
---

In nineteenth-century mathematics, infinite sets were treated with caution. While it was acknowledged that both the natural numbers $$\mathbb{N}$$ and the real continuum $$\mathbb{R}$$ were infinite, $$\mathbb{R}$$ seemed fundamentally richer. 

The natural numbers are discrete: each has a well-defined successor ($$0, 1, 2, \dots$$). Real numbers, by contrast, admit no immediate successor; in any open interval $$(a, b)$$, uncountably many reals reside.

How do we formalise the intuition that some infinities are strictly larger than others?

---

### 1. Equinumerosity: The Hat Principle

When counting by hand is impossible, we test whether two sets have the "same size" using **bijections**:

> Suppose you enter a room with seven people. You could count them on your fingers ($$1, 2, \dots, 7$$), or you could take seven hats and place exactly one hat on each person's head. 
> 
> If every person wears exactly one hat and no hats remain, you know with certainty that the number of hats equals the number of people, without needing to count them in sequence.

Formally, two sets $$A$$ and $$B$$ are **equinumerous** ($$A \sim B$$) if there exists a bijection $$f \colon A \longrightarrow B$$. Equinumerosity is an equivalence relation (reflexive, symmetric, and transitive).

A set $$A$$ is defined to be **countable** if $$A$$ is finite or $$A \sim \mathbb{N}$$. Equivalently, $$A$$ is countable if and only if there exists an injection $$f \colon A \longrightarrow \mathbb{N}$$.

---

### 2. Cantor's Theorem: You Cannot Exceed the Power Set

Towards the end of the nineteenth century, Georg Cantor proved that a set can never be placed into surjective correspondence with its power set $$\mathcal{P}(A)$$.

> **Theorem (Cantor):** For any set $$A$$, there exists no surjection $$f \colon A \longrightarrow \mathcal{P}(A)$$.

**Proof:**  
Suppose for contradiction that such a surjection exists. Define the set:
$$
C := \{x \in A \mid x \notin f(x)\}
$$

Since $$f$$ is surjective, every subset of $$A$$ must appear in its image. In particular, $$C \in \mathcal{P}(A)$$ must have a pre-image: there exists some $$b \in A$$ such that $$f(b) = C$$.

Now we test whether $$b \in C$$:
$$
b \in C \iff b \notin f(b) \iff b \notin C
$$
This is an immediate contradiction ($$\bot$$). Therefore, no surjection can exist. Since any bijection must be a surjection, we conclude that $$A \not\sim \mathcal{P}(A)$$. $$\quad \blacksquare$$

---

### 3. Examples of Countable Sets

1. **$$\mathbb{N}$$ is countable:** The identity function $$\operatorname{id}_{\mathbb{N}}(n) = n$$ is a bijection from $$\mathbb{N}$$ to $$\mathbb{N}$$.
2. **$$\mathbb{Z}$$ is countable:** We can interleave positive and negative integers:
   $$
   f(0) = 0, \quad f(1) = 1, \quad f(2) = -1, \quad f(3) = 2, \quad f(4) = -2, \quad \dots
   $$
   Explicitly defined by:
   $$
   f(n) = \begin{cases} \frac{n+1}{2} & \text{if } n \text{ is odd}, \\ -\frac{n}{2} & \text{if } n \text{ is even}. \end{cases}
   $$
3. **$$\mathbb{R}$$ is uncountable:** As Cantor showed via diagonalisation, any attempt to enumerate all real numbers will necessarily omit an infinite number of them.

---

### 4. A Challenge for the Reader

Let $$\Sigma = \{0, 1\}$$ be a binary alphabet, and let $$\Sigma^*$$ denote the set of all **finite strings** over $$\Sigma$$ (including the empty string $$\varepsilon$$, $$0$$, $$1$$, $$00$$, $$01$$, $$10$$, $$11$$, $$000$$, \dots).

Prove that $$\Sigma^*$$ is countably infinite by constructing an explicit enumeration in which no finite string is omitted.
