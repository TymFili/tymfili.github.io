We proceed by structural induction on formulae. 

For the quantifier step, let $$\phi = \forall x \psi(x)$$:
$$
\mathfrak{A} \models (\forall x \psi(x))^* \iff \forall t \in \vert \mathfrak{A} \vert \ \mathfrak{A} \models \psi^*[s_{x \mapsto t}] \iff \forall t \in \vert \mathfrak{A} \vert \ \psi(t) \in \Delta
$$
by the inductive hypothesis.

If $$\neg \forall x \psi(x) \in \Delta$$, then by the Henkin construction, the witness formula satisfies $$\neg \psi(c_{k}) \in \Delta$$ for some Henkin constant $$c_{k}$$. 

Since $$c_k \in \vert \mathfrak{A} \vert$$, this directly contradicts that $$\psi(t) \in \Delta$$ for all terms $$t \in \vert \mathfrak{A} \vert$$. The remaining connective steps follow directly from maximal consistency.

<div style="text-align: right;">$$\boldsymbol{Q.E.D.}$$</div>
