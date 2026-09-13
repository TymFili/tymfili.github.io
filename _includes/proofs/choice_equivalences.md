**1. Zorn’s Lemma ($$\mathbf{ZL}$$) from Hausdorff's Maximal Principle ($$\mathbf{HP}$$):**  
Let $$X$$ be a poset where every chain has an upper bound. By $$\mathbf{HP}$$, there exists a maximal chain $$\mathcal{C} \subseteq X$$. Any upper bound of $$\mathcal{C}$$ is a maximal element of $$X$$.

**2. Well-Ordering Theorem ($$\mathbf{WO}$$) from $$\mathbf{ZL}$$:**  
Let $$\mathcal{A} := \{R \subseteq X \times X \mid R \text{ is a well-ordering of } \operatorname{dom} R\}$$, ordered by initial segments. Every chain of well-orderings has an upper bound (its union). By $$\mathbf{ZL}$$, let $$R$$ be a maximal element. If $$\operatorname{dom} R \neq X$$, we pick $$x \in X \setminus \operatorname{dom} R$$ and append it after all elements of $$\operatorname{dom} R$$, contradicting maximality. Hence $$\operatorname{dom} R = X$$.

**3. $$\mathbf{WO} \implies \mathbf{AC}$$:**  
Let $$\mathcal{A}$$ be a set of non-empty sets. By $$\mathbf{WO}$$, choose a well-ordering $$\le$$ of $$\bigcup \mathcal{A}$$. The function $$f(A) := \min_\le A$$ is a well-defined choice function.

<div style="text-align: right;">$$\boldsymbol{Q.E.D.}$$</div>
