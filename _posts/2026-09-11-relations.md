---
layout: post
title: "A Visual Taxonomy of Binary Relations"
date: 2026-09-11
description: "Visualising the 16 distinct classes of binary relations between two sets."
tags: [discrete-mathematics, relations, logic]
categories: [mathematics]
---

In discrete mathematics and formal logic, keeping track of how ordinary functions, partial functions, injections, and surjections relate to arbitrary binary relations can be unintuitive.

Any binary relation $$R \subseteq A \times B$$ between sets $$A$$ and $$B$$ can be characterised independently across four fundamental binary properties:

1. **Left-Total:** Every element of $$A$$ is in the domain of $$R$$ ($$\operatorname{dom} R = A$$):
   $$
   \forall a \in A \ \exists b \in B \ (a, b) \in R
   $$
2. **Single-Valued (Functional):** Every element in the domain is related to at most one element in the codomain:
   $$
   \forall a \in A \ \forall b_1, b_2 \in B \ (((a, b_1) \in R \land (a, b_2) \in R) \rightarrow b_1 = b_2)
   $$
3. **Injective (Left-Unique):** Distinct domain elements map to distinct targets:
   $$
   \forall a_1, a_2 \in A \ \forall b \in B \ (((a_1, b) \in R \land (a_2, b) \in R) \rightarrow a_1 = a_2)
   $$
4. **Surjective (Right-Total):** Every element of $$B$$ is in the range of $$R$$ ($$\operatorname{ran} R = B$$):
   $$
   \forall b \in B \ \exists a \in A \ (a, b) \in R
   $$

Because each of these four conditions can independently hold or fail, there are exactly:
$$
2^4 = 16
$$
distinct classes of binary relations.

---

### The 16-Way Classification Diagram

Below is the complete classification of all 16 possibilities, arranged as a $$4 \times 4$$ grid of small mapping diagrams:

<div class="text-center my-4">
  <img src="{{ '/assets/img/relations_classification.svg' | relative_url }}" class="img-fluid rounded border shadow-sm" style="max-width: 100%; height: auto;" alt="Classification of Binary Relations Diagram">
  <p class="text-muted mt-2 small"><em>Figure: Classification of binary relations by totality, single-valuedness, injectivity, and surjectivity.</em></p>
</div>

#### Reading the Matrix
* **Top-Left Region (Green):** (Total) functions satisfy both left-totality and single-valuedness.
* **Bijections:** All four properties hold simultaneously (the top-left corner).
* **Top-Right Region (Cyan):** Partial functions (single-valued, but not left-total).
* **Bottom Region (Red):** Multivalued relations (non-functions).

---

### Attribution & Further Reading

The visual layout was originally conceived by Reddit user [u/Cromulent123 on r/math](https://www.reddit.com/r/math/comments/1q1at9r/injective_surjective_and_bijective_functions/). 

I reconstructed and typeset the graphic in TikZ for my [lecture script on mathematical logic]({{ '/assets/pdf/logic.pdf' | relative_url }}), where the formal set-theoretic groundwork and the notation used above are developed in detail.
