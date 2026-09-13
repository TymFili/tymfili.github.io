Assume without loss of generality that $$0 \le x < y$$. 

Since $$y - x > 0$$, by the Archimedean Property there exists $$n \in \mathbb{N}$$ such that:
$$
n(y - x) > 1 \iff ny - nx > 1
$$
Applying the Archimedean Property again to $$nx$$, the collection of natural numbers strictly greater than $$nx$$ is non-empty. By the well-ordering of $$\mathbb{N}$$, there exists a least integer $$m \in \mathbb{Z}$$ such that:
$$
m - 1 \le nx < m
$$
From $$nx < m$$, we obtain the lower bound. From $$m - 1 \le nx$$, adding $$1$$ gives:
$$
m \le nx + 1
$$
Because $$ny - nx > 1$$, we have $$nx + 1 < ny$$. Chaining these inequalities:
$$
nx < m \le nx + 1 < ny \implies nx < m < ny
$$
Dividing by $$n > 0$$ yields:
$$
x < \frac{m}{n} < y
$$
Setting $$q := \frac{m}{n} \in \mathbb{Q}$$, we conclude:
$$
x < q < y
$$

<div style="text-align: right;">$$\boldsymbol{Q.E.D.}$$</div>
