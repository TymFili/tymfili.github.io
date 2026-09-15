Let $$A$$ be any set. 

By the [Well-Ordering Theorem](#well-ordering-theorem), which holds in $$\mathrm{ZFC}^-$$, there exists a well-ordering $$\le$$ of the set $$A$$.

By the [Ordinal Representation Theorem](#woset-to-ordinal), every well-ordered set is order-isomorphic to a unique ordinal number:
$$
(A, \le) \cong_{\operatorname{Ord}} (\alpha, \in) \quad \text{for some } \alpha \in \mathbf{Ord}
$$
Because an order-isomorphism is a bijection, $$A \sim \alpha$$.

The collection of all ordinals equinumerous to $$A$$ is non-empty (since $$\alpha$$ belongs to it). By the well-foundedness of the class $$\mathbf{Ord}$$, the non-empty class:
$$
\{\beta \in \mathbf{Ord} \mid \beta \sim A\}
$$
possesses an $$\in$$-minimal element. We define this minimal initial ordinal to be the cardinality of $$A$$:
$$
\vert A \vert := \min \{\beta \in \mathbf{Ord} \mid \beta \sim A\}
$$
Hence, every set has a well-defined cardinal number.

<div style="text-align: right;">$$\boldsymbol{Q.E.D.}$$</div>
