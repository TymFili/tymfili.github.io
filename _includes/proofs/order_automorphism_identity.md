Let $$S := \{x \in X \mid f(x) < x\}$$. If $$S \neq \emptyset$$, let $$s := \min_\le S$$. 

Since $$f(s) < s$$, applying the order-preserving bijection $$f$$ yields $$f(f(s)) < f(s)$$, which contradicts the minimality of $$s$$ in $$S$$. Hence $$S = \emptyset$$, so $$\forall x \in X \ x \le f(x)$$.

If $$f$$ is an automorphism, its inverse $$f^{-1}$$ is also an automorphism. Thus for all $$x \in X$$, we have both $$x \le f(x)$$ and $$x \le f^{-1}(x) \implies f(x) \le x$$. Hence $$f(x) = x = \operatorname{id}_X(x)$$.

<div style="text-align: right;">$$\boldsymbol{Q.E.D.}$$</div>
