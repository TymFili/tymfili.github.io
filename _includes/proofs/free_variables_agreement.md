We proceed by structural induction on the formula $$\varphi$$.

* **Atomic Case ($$\varphi = R t_1 \dots t_n$$):**  
  The free variables of $$\varphi$$ are all variables occurring in the terms $$t_1, \dots, t_n$$. Since assignments $$s$$ and $$r$$ agree on all variables in $$t_i$$, the recursive evaluation of terms gives $$\bar{s}(t_i) = \bar{r}(t_i)$$ for all $$i$$. Thus:
  $$
  (\bar{s}(t_1), \dots, \bar{s}(t_n)) \in R^\mathfrak{A} \iff (\bar{r}(t_1), \dots, \bar{r}(t_n)) \in R^\mathfrak{A}
  $$
* **Connective Steps:** Direct from the induction hypothesis.
* **Quantifier Step ($$\varphi = \forall x \psi$$):**  
  The free variables of $$\varphi$$ are $$\operatorname{FV}(\psi) \setminus \{x\}$$. For any element $$t \in \vert \mathfrak{A} \vert$$, the modified assignments $$s_{x \mapsto t}$$ and $$r_{x \mapsto t}$$ agree on $$x$$ (both equal $$t$$) and agree on all variables in $$\operatorname{FV}(\psi) \setminus \{x\}$$. 

  By the inductive hypothesis, $$\mathfrak{A} \models \psi[s_{x \mapsto t}] \iff \mathfrak{A} \models \psi[r_{x \mapsto t}]$$ for all $$t \in \vert \mathfrak{A} \vert$$. Hence $$\mathfrak{A} \models \forall x \psi[s] \iff \mathfrak{A} \models \forall x \psi[r]$$.

<div style="text-align: right;">$$\boldsymbol{Q.E.D.}$$</div>
