> **Definition:** The weight assignment $$w$$ assigns:
> * $$w(f) := \operatorname{ar}(f) - 1$$ for $$f \in \mathbf{F}$$
> * $$w(R) := \operatorname{ar}(R) - 1$$ for $$R \in \mathbf{R}$$
> * $$w(c) := -1$$ for $$c \in \mathbf{C}$$ and $$w(x_i) := -1$$ for variables
> * $$w(=) := 1$$
> * $$w(\neg) := 0$$, and $$w(\ast) := 1$$ for binary connectives and quantifiers.
> 
> The cumulative weight of a string is defined by $$\hat{w}(\varepsilon) := 0$$ and $$\hat{w}(\sigma s) := \hat{w}(\sigma) + w(s)$$. Prefix strings are uniquely readable because $$\hat{w}(t) = -1$$ for every term or formula, while $$\hat{w}(\sigma) \ge 0$$ for every proper initial segment.
