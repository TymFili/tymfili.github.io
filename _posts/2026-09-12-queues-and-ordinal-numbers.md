---
layout: post
title: "Queues, Non-Commutativity, and Ordinal Numbers"
date: 2026-09-12
description: "Understanding well-orderings and transfinite arithmetic through the geometry of waiting in line."
tags: [set-theory, logic, ordinals]
categories: [mathematics]
---

Cardinal numbers answer the question: *"How many?"*  
Ordinal numbers answer the question: *"In what order?"*

While cardinal arithmetic is trivialised by the Axiom of Choice ($$\kappa + \lambda = \kappa \cdot \lambda = \max\{\kappa, \lambda\}$$ for infinite cardinals), ordinal arithmetic is dynamic, geometric, and stubbornly **non-commutative**.

To understand ordinals, one should forget about abstract sets and think about a **queue** at a service counter.

---

### 1. The Anatomy of a Fair Queue

Not every ordered set can serve as a queue:

1. **$$\mathbb{Z}$$ cannot be a queue:** In an ordering of type $$\dots, -2, -1, 0, 1, 2, \dots$$, nobody is at the counter. The line has no front; service can never begin.
2. **$$\mathbb{Q}$$ or $$[0, 1]$$ cannot be a queue:** Once the first customer at position $$0$$ is served, who is next? In a dense order, there is no immediate successor. The counter clerk is paralyzed.

To operate a functional queue, the ordering $$\le$$ must be a **well-ordering**:
> Every non-empty collection of waiting customers must possess an unambiguous **next person to be served** (a least element).

An **ordinal number** is simply the order type (the invariant "shape") of a well-ordered queue.

---

### 2. The Finite and the Horizon ($$\omega$$)

A queue of length $$n$$ is finite: $$0, 1, 2, \dots, n-1$$.

The simplest infinite queue is:
$$
\omega = 0, 1, 2, 3, \dots
$$
In this standard line, every customer has only **finitely many people ahead of them**. Consequently, no matter how far back you stand, you are guaranteed to reach the counter in a finite number of steps.

---

### 3. Non-Commutative Addition: Cutting in Line vs. The Latecomer

Addition $$\alpha + \beta$$ represents sequential concatenation: the queue of type $$\alpha$$ is served first, followed by the queue of type $$\beta$$.

#### Cutting to the Front ($$1 + \omega = \omega$$)
A customer cuts directly to the front of an infinite queue:
$$
\text{New Customer}, \quad 0, \quad 1, \quad 2, \quad 3, \quad \dots
$$
Relabelling the customers ($$\text{New} \mapsto 0, 0 \mapsto 1, 1 \mapsto 2, \dots$$) reveals that the queue is structurally isomorphic to the original line:
$$
1 + \omega = \omega
$$
Every person still has only finitely many people ahead of them.

#### The Latecomer ($$\omega + 1 \ne \omega$$)
A customer arrives and takes their place behind the entire infinite queue:
$$
0, \quad 1, \quad 2, \quad 3, \quad \dots \quad \mid \quad \text{Latecomer}
$$
Now the structure of the queue has changed fundamentally:
* The latecomer has **infinitely many people ahead of them**.
* Unlike $$\omega$$, this queue has a *terminal element* (a maximum).

The shape of the line has changed, proving that addition is not commutative:
$$
1 + \omega = \omega \ne \omega + 1
$$

---

### 4. Non-Commutative Multiplication: Waiting in Pairs vs. Queues of Queues

Multiplication $$\alpha \cdot \beta$$ means placing $$\beta$$ copies of the queue $$\alpha$$ in sequential order.

#### Waiting in Pairs ($$2 \cdot \omega = \omega$$)
Consider $$\omega$$ copies of a 2-person queue. Customers wait in pairs:
$$
(a_0, b_0), \quad (a_1, b_1), \quad (a_2, b_2), \quad (a_3, b_3), \quad \dots
$$
Flattening the line into individuals:
$$
a_0, \quad b_0, \quad a_1, \quad b_1, \quad a_2, \quad b_2, \quad \dots
$$
Every customer still has only a finite number of people in front of them. The order type is indistinguishable from the standard natural numbers:
$$
2 \cdot \omega = \omega
$$

#### Two Queues Back-to-Back ($$\omega \cdot 2 \ne \omega$$)
Now consider $$2$$ copies of the infinite queue $$\omega$$:
$$
\underbrace{0_A, 1_A, 2_A, 3_A, \dots}_{\text{Queue } A} \quad \mid \quad \underbrace{0_B, 1_B, 2_B, 3_B, \dots}_{\text{Queue } B}
$$
This is equivalent to $$\omega + \omega$$. 

Customer $$0_B$$ is at the front of Queue $$B$$, yet they must wait for all of Queue $$A$$ to clear before being served. The line contains two distinct limit points. Therefore:
$$
2 \cdot \omega = \omega \ne \omega \cdot 2
$$

---

### 5. Higher Horizons: $$\omega^2, \omega^\omega, \varepsilon_0$$

We can iterate this geometry:
* **$$\omega \cdot \omega = \omega^2$$:** An infinite sequence of infinite queues waiting behind one another.
* **$$\omega^3$$:** An infinite queue of rooms, each containing $$\omega$$ infinite queues.
* **$$\omega^\omega$$:** The limit of $$\omega, \omega^2, \omega^3, \dots$$
* **$$\varepsilon_0$$:** The fixed-point horizon satisfying $$\omega^{\varepsilon_0} = \varepsilon_0$$.

#### The Cardinal Illusion
Every single one of the queues described above—from $$\omega$$ to $$\omega+1$$, $$\omega \cdot 2$$, and $$\varepsilon_0$$—contains the exact same number of people:
$$
\vert \omega \vert = \vert \omega + 1 \vert = \vert \omega \cdot 2 \vert = \vert \omega^2 \vert = \vert \varepsilon_0 \vert = \aleph_0
$$
Cardinally, they are identical. Ordinally, their waiting dynamics are worlds apart.

---

### 6. The Von Neumann Formalism

How do logicians capture the geometry of a queue without referring to people or counters?

John von Neumann formalised ordinals by identifying **every position in the queue with the set of all positions preceding it**:
$$
\alpha := \{\beta \in \mathbf{Ord} \mid \beta < \alpha\}
$$

Under this definition:
* $$0 = \emptyset$$ (nobody is ahead of you).
* $$1 = \{0\} = \{\emptyset\}$$.
* $$2 = \{0, 1\} = \{\emptyset, \{\emptyset\}\}$$.
* $$\omega = \{0, 1, 2, \dots\}$$.
* $$\omega + 1 = \omega \cup \{\omega\} = \{0, 1, 2, \dots, \omega\}$$.

The strict queue order $$<$$ becomes nothing other than set membership:
$$
\alpha < \beta \iff \alpha \in \beta
$$
A well-ordered line is simply a set whose elements are ordered by membership $$\in$$, constructed so that no customer can ever step into an infinite backward loop.
