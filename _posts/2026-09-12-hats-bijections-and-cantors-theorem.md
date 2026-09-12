---
layout: post
title: "Hats, Bijections, and Cantor's Theorem: What Does it Mean to Count?"
date: 2026-09-12
description: "How Georg Cantor revolutionized our concept of infinity through bijective correspondences."
tags: [set-theory, discrete-mathematics, logic]
categories: [mathematics]
---

In nineteenth-century mathematics, infinite sets were treated with suspicion. While it was acknowledged that both the natural numbers $$\mathbb{N}$$ and the real continuum $$\mathbb{R}$$ were infinite, $$\mathbb{R}$$ seemed fundamentally richer. 

The natural numbers are discrete: each has a well-defined successor ($$0, 1, 2, \dots$$). Real numbers, by contrast, admit no immediate successor; in any open interval $$(a, b)$$, uncountably many reals reside.

How do we formalise the intuition that some infinities are strictly larger than others?

---

### 1. Equinumerosity: The Hat Principle

When there is no obvious way to count by hand, we test whether two sets have the "same size" using **bijections**:

> Suppose you enter a room with seven people. You could count them on your fingers ($$1, 2, \dots, 7$$), or you could take seven hats and place exactly one hat on each person's head. 
> 
> If every person wears exactly one hat and no hats remain, you know with certainty that the number of hats equals the number of people, without having counted them in sequence.

Formally, two sets $$A$$ and $$B$$ are **equinumerous** ($$A \sim B$$) if there exists a bijection $$f \colon A \longrightarrow B$$. Equinumerosity is an equivalence relation (reflexive, symmetric, and transitive).

A set $$A$$ is defined to be **countable** if it is finite or equinumerous with the natural numbers ($$A \sim \mathbb{N}$$). Equivalently, $$A$$ is countable if and only if there exists an injection $$f \colon A \longrightarrow \mathbb{N}$$.

---

### 2. Cantor's Theorem: You Cannot Exceed the Power Set

Towards the end of the nineteenth century, Georg Cantor proved that a set can never be placed into one-to-one correspondence with its power set $$\mathcal{P}(A)$$ (the set of all subsets of $$A$$).

> **Theorem (Cantor):** For any set $$A$$, there exists no surjective function $$f \colon A \longrightarrow \mathcal{P}(A)$$.

**Proof:**  
Assume for contradiction that such a surjection exists. Each element $$a \in A$$ maps to a subset $$f(a) \subseteq A$$. Consider the subset $$B \subseteq A$$ defined by:
$$
B := \{a \in A \mid a \notin f(a)\}
$$

Since $$f$$ is surjective, every subset of $$A$$ must appear in its image. In particular, the set $$B$$ must have a pre-image: there exists some element $$b \in A$$ such that:
$$
f(b) = B
$$

Now, we ask: **Is $$b \in B$$?**
* If $$b \in B$$, then by definition of $$B$$, we must have $$b \notin f(b)$$. But since $$f(b) = B$$, this implies $$b \notin B$$, a contradiction.
* If $$b \notin B$$, then since $$f(b) = B$$, we have $$b \notin f(b)$$. But by the definition of $$B$$, any element not in its image belongs to $$B$$, implying $$b \in B$$, again a contradiction.

In both cases, we obtain:
$$
b \in B \iff b \notin B
$$
This is a direct logical contradiction ($$\bot$$). Therefore, no surjection can exist. Since any bijection must be a surjection, it follows immediately that $$A \not\sim \mathcal{P}(A)$$. $$\quad \blacksquare$$

---

### 3. Examples of Countable Sets

1. **$$\mathbb{N}$$ is countable:** The identity map $$\text{id}_{\mathbb{N}}(n) = n$$ is a trivial bijection.
2. **$$\mathbb{Z}$$ is countable:** We can interleave positive and negative integers:
   $$
   f(0) = 0, \quad f(1) = 1, \quad f(2) = -1, \quad f(3) = 2, \quad f(4) = -2, \quad \dots
   $$
   Explicitly:
   $$
   f(n) = \begin{cases} \frac{n+1}{2} & \text{if } n \text{ is odd}, \\ -\frac{n}{2} & \text{if } n \text{ is even}. \end{cases}
   $$
3. **$$\mathbb{R}$$ is uncountable:** As Cantor demonstrated using his diagonalisation argument, any attempt to enumerate all real numbers will necessarily omit an infinite number of them.

---

### 4. A Challenge for the Reader

Let $$\{0, 1\}^*$$ denote the set of all **finite strings** over the alphabet $$\{0, 1\}$$ (e.g. the empty string $$\varepsilon$$, $$0$$, $$1$$, $$00$$, $$01$$, $$10$$, $$11$$, $$000$$, \dots).

Show that $$\{0, 1\}^*$$ is countably infinite by exhibiting a systematic enumeration where no finite sequence is omitted.
