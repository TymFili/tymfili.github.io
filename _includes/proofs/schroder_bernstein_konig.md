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
