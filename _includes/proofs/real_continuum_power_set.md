We construct injections in both directions:

1. Define $$f \colon \mathcal{P}(\mathbb{N}) \longrightarrow \mathbb{R}$$ by $$f(S) := \sum_{n \in S} \frac{2}{3^{n+1}}$$. Ternary expansions with digits in $$\{0, 2\}$$ avoid dual representations, so $$f$$ is injective.
2. Define $$g \colon \mathbb{R} \longrightarrow \mathcal{P}(\mathbb{Q})$$ by $$g(x) := \{q \in \mathbb{Q} \mid q < x\}$$. Density of $$\mathbb{Q}$$ implies $$g$$ is injective. Since $$\mathbb{Q} \sim \mathbb{N}$$, this induces an injection into $$\mathcal{P}(\mathbb{N})$$.

By the Schröder–Bernstein Theorem, $$\mathbb{R} \sim \mathcal{P}(\mathbb{N})$$. By Cantor's Theorem, $$\mathbb{R} \nsim \mathbb{N}$$.

<div style="text-align: right;">$$\boldsymbol{Q.E.D.}$$</div>
