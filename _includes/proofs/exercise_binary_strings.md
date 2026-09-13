Prepend the digit $$1$$ to any string $$w \in \Sigma^*$$, and evaluate as a binary integer:
$$
f(w) := \operatorname{val}_2(1w) - 1
$$
Because every positive integer has a unique binary representation starting with $$1$$, subtracting $$1$$ yields a bijection $$f \colon \Sigma^* \longrightarrow \mathbb{N}$$.

<div style="text-align: right;">$$\boldsymbol{Q.E.D.}$$</div>
