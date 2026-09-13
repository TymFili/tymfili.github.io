By the Schröder–Bernstein Theorem, it suffices to construct mutual injections between $$\mathcal{P}(\mathbb{N})$$ and $$\mathbb{R}$$.

**1. Injection $$f \colon \mathcal{P}(\mathbb{N}) \longrightarrow \mathbb{R}$$:**  
Define $$f(S) := \sum_{n \in S} \frac{2}{3^{n+1}}$$. Ternary expansions using only digits $$0$$ and $$2$$ avoid dual representations ($$0.0111\dots = 0.1000\dots$$), so $$f$$ is injective.

**2. Injection $$g \colon \mathbb{R} \longrightarrow \mathcal{P}(\mathbb{N})$$:**  
Every real $$x$$ is uniquely determined by its Dedekind cut $$D(x) := \{q \in \mathbb{Q} \mid q < x\}$$. Density of $$\mathbb{Q}$$ ensures $$D \colon \mathbb{R} \longrightarrow \mathcal{P}(\mathbb{Q})$$ is injective. Since $$\mathbb{Q} \sim \mathbb{N}$$, this induces an injection $$g \colon \mathbb{R} \longrightarrow \mathcal{P}(\mathbb{N})$$.

By the Schröder–Bernstein Theorem, mutual injections establish:
$$
\mathbb{R} \sim \mathcal{P}(\mathbb{N})
$$
Since $$\mathbb{N} \nsim \mathcal{P}(\mathbb{N})$$ by Cantor's Theorem, it follows that $$\mathbb{R} \nsim \mathbb{N}$$.

<div style="text-align: right;">$$\boldsymbol{Q.E.D.}$$</div>
