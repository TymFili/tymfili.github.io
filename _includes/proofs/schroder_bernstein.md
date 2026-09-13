**Case 1: Assume $$B \subseteq A$$.**

Let $$\iota \colon B \hookrightarrow A$$ be the inclusion map. We construct a bijection using the injection $$f \colon A \longrightarrow B$$.

Define the cascade of displaced subsets:
$$
A_0 := A \setminus B, \quad A_{n+1} := f(A_n), \quad C := \bigcup_{n \in \mathbb{N}} A_n
$$
Define $$h \colon A \longrightarrow B$$ by:
$$
h(x) := \begin{cases} f(x) & \text{if } x \in C, \\ x & \text{if } x \notin C. \end{cases}
$$

1. **Well-defined codomain ($$h(A) \subseteq B$$):**  
   If $$x \in C$$, then $$h(x) = f(x) \in B$$. If $$x \notin C$$, then $$x \notin A_0 = A \setminus B$$, so $$x \in B$$. Thus $$h(x) = x \in B$$.
2. **Injectivity:** Let $$h(x) = h(y)$$.  
   * If $$x, y \in C$$, injectivity of $$f$$ gives $$f(x) = f(y) \implies x = y$$.  
   * If $$x, y \notin C$$, then $$x = y$$.  
   * If $$x \in C$$ and $$y \notin C$$, then $$x \in A_k$$, so $$h(x) = f(x) \in A_{k+1} \subseteq C$$. But $$h(y) = y \notin C$$, so $$h(x) \ne h(y)$$.
3. **Surjectivity:** Let $$y \in B$$.  
   * If $$y \in C$$, then $$y \notin A_0$$ (since $$y \in B$$). Thus $$y \in A_{k+1} = f(A_k)$$ for some $$k \ge 0$$, meaning $$y = f(x) = h(x)$$ for $$x \in A_k \subseteq C$$.  
   * If $$y \notin C$$, then $$h(y) = y$$.

Hence, $$h \colon A \longrightarrow B$$ is a bijection.

---

**Case 2: General Case ($$B \not\subseteq A$$).**

We have injections $$f \colon A \longrightarrow B$$ and $$g \colon B \longrightarrow A$$.

The image $$g(B) \subseteq A$$ is in bijection with $$B$$ via $$g^{-1} \colon g(B) \longrightarrow B$$. The composite map:
$$
g \circ f \colon A \longrightarrow g(B)
$$
is an injection from $$A$$ into its subset $$g(B)$$. Applying **Case 1** to the pair $$(A, g(B))$$ with the injection $$g \circ f$$ yields a bijection:
$$
h \colon A \longrightarrow g(B)
$$
Composing this with $$g^{-1}$$ yields the bijection:
$$
g^{-1} \circ h \colon A \longrightarrow B
$$

Notice that this proof is **entirely constructive**: $$h(x)$$ is determined strictly by iteration on $$\mathbb{N}$$ without invoking the Axiom of Choice.

<div style="text-align: right;">$$\boldsymbol{Q.E.D.}$$</div>
