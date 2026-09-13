1. **$$\aleph_0 + \aleph_0 = \aleph_0$$:**  
   $$\mathbb{N} \sqcup \mathbb{N} \sim \mathbb{N}$$ via $$n_1 \mapsto 2n$$ and $$n_2 \mapsto 2n+1$$.
2. **$$\aleph_0 \cdot \aleph_0 = \aleph_0$$:**  
   $$\mathbb{N} \times \mathbb{N} \sim \mathbb{N}$$ via the Cantor pairing function $$\pi(m, n) = \frac{(m+n)(m+n+1)}{2} + n$$.
3. **$$2^\kappa \cdot 2^\lambda = 2^{\kappa + \lambda}$$:**  
   $$\mathcal{P}(A) \times \mathcal{P}(B) \sim \mathcal{P}(A \sqcup B)$$ via $$(S, T) \mapsto S \sqcup T$$.
4. **$$(\kappa^\lambda)^\mu = \kappa^{\lambda \cdot \mu}$$:**  
   $$(A^B)^C \sim A^{B \times C}$$ via currying: $$f \mapsto \tilde{f}$$ where $$\tilde{f}(b, c) := (f(c))(b)$$.

<div style="text-align: right;">$$\boldsymbol{Q.E.D.}$$</div>
