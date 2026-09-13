Suppose for contradiction that there exist $$x, y \in \mathbb{R}$$ with $$x > 0$$ such that for all $$n \in \mathbb{N}$$, $$nx \le y$$. 

Define $$S := \{nx \mid n \in \mathbb{N}\}$$. Since $$x \in S$$, $$S \ne \emptyset$$, and $$S$$ is bounded from above by $$y$$. 

By the Completeness Axiom, let $$\alpha := \sup S \in \mathbb{R}$$. Since $$x > 0$$, $$\alpha - x < \alpha$$, so $$\alpha - x$$ is not an upper bound of $$S$$. Pick $$m \in \mathbb{N}$$ such that $$mx > \alpha - x$$. Then $$(m + 1)x > \alpha$$. Since $$m + 1 \in \mathbb{N}$$, $$(m + 1)x \in S$$, which contradicts that $$\alpha$$ is an upper bound of $$S$$.

<div style="text-align: right;">$$\boldsymbol{Q.E.D.}$$</div>
