Assume for contradiction that there exist $$x, y \in \mathbb{R}$$ with $$x > 0$$ such that for all $$n \in \mathbb{N}$$, $$nx \le y$$.

Define the collection of all natural multiples:
$$
S := \{nx \mid n \in \mathbb{N}\}
$$
Since $$x \in S$$, $$S \ne \emptyset$$, and by hypothesis, $$S$$ is bounded from above by $$y$$. 

By the Completeness Axiom, $$S$$ has a supremum in $$\mathbb{R}$$:
$$
\alpha := \sup S
$$
Since $$x > 0$$, we have $$\alpha - x < \alpha$$. Because $$\alpha$$ is the least upper bound, $$\alpha - x$$ cannot be an upper bound of $$S$$. Therefore, there exists some element $$mx \in S$$ such that:
$$
mx > \alpha - x
$$
Adding $$x$$ to both sides yields:
$$
(m + 1)x > \alpha
$$
Since $$m + 1 \in \mathbb{N}$$, we have $$(m + 1)x \in S$$. This contradicts that $$\alpha$$ is an upper bound of $$S$$. 

Hence, no such upper bound $$y$$ can exist:
$$
\exists n \in \mathbb{N} \ nx > y
$$

<div style="text-align: right;">$$\boldsymbol{Q.E.D.}$$</div>
