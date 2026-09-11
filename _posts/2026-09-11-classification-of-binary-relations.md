---
layout: post
title: "A Visual Taxonomy of Binary Relations"
date: 2026-09-11
description: "Visualizing the 16 distinct classes of binary relations between two sets."
tags: [discrete-math, relations, logic]
categories: [mathematics]
---

In discrete mathematics and formal logic, keeping track of how ordinary functions, partial functions, injections, and surjections relate to arbitrary binary relations can be unintuitive.

Any binary relation $R \subseteq A \times B$ between sets $A$ and $B$ can be characterised independently across four fundamental binary properties:

1. **Left-Total:** Every element in the domain has at least one target ($\forall a \in A, \, \exists b \in B : aRb$).
2. **Single-Valued (Functional):** Every element in the domain has at most one target ($\forall a, b, c : aRb \land aRc \implies b = c$).
3. **Injective (Left-Unique):** Distinct domain elements map to distinct targets ($\forall a, b, c : aRc \land bRc \implies a = b$).
4. **Surjective (Right-Total):** Every element in the codomain is mapped to ($\forall b \in B, \, \exists a \in A : aRb$).

Because each of these four conditions can independently hold or fail, there are exactly:
$$2^4 = 16$$
distinct classes of binary relations.

---

### The 16-Way Classification Diagram

Below is the complete classification of all 16 possibilities, arranged as a 4×4 grid of small mapping diagrams:

<div class="text-center my-4">
  <img src="{{ '/assets/img/relations_classification.svg' | relative_url }}" class="img-fluid rounded border shadow-sm" style="max-width: 100%; height: auto;" alt="Classification of Binary Relations Diagram">
  <p class="text-muted mt-2 small"><em>Figure: Classification of binary relations by totality, single-valuedness, injectivity, and surjectivity.</em></p>
</div>

#### Reading the Matrix
* **Top-Left Region (Green):** Ordinary (total) functions satisfy both *Left-Total* and *Single-Valued*.
* **Bijections:** All four properties hold simultaneously (the top-left corner).
* **Top-Right Region (Cyan):** Partial functions (single-valued, but not left-total).
* **Bottom Region (Red):** Multivalued relations (non-functions).

---

### Attribution & Acknowledgements

The diagram created by Reddit user [u/Cromulent123 on r/math](https://www.reddit.com/r/math/comments/1q1at9r/injective_surjective_and_bijective_functions/), I merely translated it into a Scalable Vector Graphics file.

I reconstructed and typeset the graphic as a standalone vector diagram in TikZ for my logic course lecture script.
