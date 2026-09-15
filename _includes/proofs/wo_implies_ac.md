Let $$\mathcal{A}$$ be a set of non-empty sets. 

By the [Well-Ordering Theorem](#well-ordering-theorem), there exists a well-ordering $$\le$$ of the union $$\bigcup \mathcal{A}$$. 

Define the choice function $$f \colon \mathcal{A} \longrightarrow \bigcup \mathcal{A}$$ by:
$$
f(A) := \min_\le A
$$
Because every $$A \in \mathcal{A}$$ is a non-empty subset of a well-ordered set, $$\min_\le A$$ exists and is unique. Hence $$f$$ is a choice function.

<div style="text-align: right;">$$\boldsymbol{Q.E.D.}$$</div>
