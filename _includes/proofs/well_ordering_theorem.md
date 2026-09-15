Let $$X$$ be any set. Define:
$$
\mathcal{A} := \{R \subseteq X \times X \mid R \text{ is a well-ordering of } \operatorname{dom} R\}
$$
Partially order $$\mathcal{A}$$ by initial segments: $$R \le S \iff (\operatorname{dom} R, R) \sqsubseteq (\operatorname{dom} S, S)$$. 

The empty relation is a well-ordering of $$\emptyset$$, so $$\mathcal{A} \ne \emptyset$$. For any chain $$\mathcal{C} \subseteq \mathcal{A}$$, its union $$\bigcup \mathcal{C}$$ is an upper bound of $$\mathcal{C}$$ in $$\mathcal{A}$$. 

By [Zorn's Lemma](#zorns-lemma), let $$R$$ be a maximal element of $$\mathcal{A}$$. If $$\operatorname{dom} R \ne X$$, pick $$x \in X \setminus \operatorname{dom} R$$ and extend $$R$$ by declaring $$y < x$$ for all $$y \in \operatorname{dom} R$$. This strictly extends $$R$$ as a well-ordering, contradicting its maximality. Hence $$\operatorname{dom} R = X$$, and $$R$$ is a well-ordering of $$X$$.

<div style="text-align: right;">$$\boldsymbol{Q.E.D.}$$</div>
