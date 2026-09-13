We proceed by induction on the structure of propositional formulae.

**Base Case:** Let $$\varphi$$ be a variable $$p$$. Then $$V(p) = \{p\}$$. Since a singleton set is finite, the property holds.

**Inductive Step:** Let $$\varphi_1, \dots, \varphi_n$$ be formulae, and assume the inductive hypothesis: $$V(\varphi_1), \dots, V(\varphi_n)$$ are all finite sets. Let $$c_k^n$$ be an $$n$$-ary connective. We evaluate $$\psi = c_k^n(\varphi_1, \dots, \varphi_n)$$. By definition, the variables in $$\psi$$ are exactly those occurring in its subformulae:
$$
V(\psi) = V(\varphi_1) \cup \dots \cup V(\varphi_n)
$$
Since the union of finitely many finite sets is finite, $$V(\psi)$$ is finite. By the induction principle, $$V(\varphi)$$ is finite for every formula $$\varphi \in \textbf{Frm}$$.

<div style="text-align: right;">$$\boldsymbol{Q.E.D.}$$</div>
