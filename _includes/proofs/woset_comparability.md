Define the relation:
$$
f := \{(x, y) \in X \times Y \mid \mathrm{X}_x \cong_{\operatorname{Ord}} \mathrm{Y}_y\}
$$
Because an isomorphism cannot map a well-ordered set onto a proper initial segment of itself, $$f$$ is a functional, injective, order-preserving map whose domain and range are initial segments of $$X$$ and $$Y$$.

If $$\operatorname{dom} f \neq X$$ and $$\operatorname{ran} f \neq Y$$, let $$x_0 := \min(X \setminus \operatorname{dom} f)$$ and $$y_0 := \min(Y \setminus \operatorname{ran} f)$$. Then:
$$
\operatorname{dom} f = X_{x_0} \quad \text{and} \quad \operatorname{ran} f = Y_{y_0} \implies \mathrm{X}_{x_0} \cong_{\operatorname{Ord}} \mathrm{Y}_{y_0} \implies (x_0, y_0) \in f
$$
contradicting $$x_0 \notin \operatorname{dom} f$$. Thus $$\operatorname{dom} f = X$$ or $$\operatorname{ran} f = Y$$:
* $$\operatorname{dom} f = X \land \operatorname{ran} f = Y \implies \mathrm{X} \cong_{\operatorname{Ord}} \mathrm{Y}$$
* $$\operatorname{dom} f = X \land \operatorname{ran} f = Y_{y_0} \implies \mathrm{X} \sqsubset \mathrm{Y}$$
* $$\operatorname{dom} f = X_{x_0} \land \operatorname{ran} f = Y \implies \mathrm{Y} \sqsubset \mathrm{X}$$

<div style="text-align: right;">$$\boldsymbol{Q.E.D.}$$</div>
