Let $$S := \{x \in X \mid \neg \Pi(x)\}$$. 

If $$S \neq \emptyset$$, let $$a := \min_\le S$$. Then for all $$y < a$$, we have $$y \notin S$$, so $$\Pi(y)$$ holds. 

By the inductive hypothesis, this implies that $$\Pi(a)$$ must hold, contradicting that $$a \in S$$. Thus $$S = \emptyset$$.

<div style="text-align: right;">$$\boldsymbol{Q.E.D.}$$</div>
