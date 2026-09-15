> **Definition:** The *satisfaction* relation $$\mathfrak{A} \models \varphi[s]$$ is defined recursively by:
> 1. $$\mathfrak{A} \models R t_1 \dots t_n[s] \iff (\bar{s}(t_1), \dots, \bar{s}(t_n)) \in R^\mathfrak{A}$$
> 2. $$\mathfrak{A} \models {= t_1 t_2}[s] \iff \bar{s}(t_1) = \bar{s}(t_2)$$
> 3. $$\mathfrak{A} \models \neg \psi[s] \iff \mathfrak{A} \not\models \psi[s]$$
> 4. $$\mathfrak{A} \models \land \psi \xi[s] \iff \mathfrak{A} \models \psi[s] \land \mathfrak{A} \models \xi[s]$$
> 5. $$\mathfrak{A} \models \lor \psi \xi[s] \iff \mathfrak{A} \models \psi[s] \lor \mathfrak{A} \models \xi[s]$$
> 6. $$\mathfrak{A} \models \rightarrow \psi \xi[s] \iff \mathfrak{A} \not\models \psi[s] \lor \mathfrak{A} \models \xi[s]$$
> 7. $$\mathfrak{A} \models \leftrightarrow \psi \xi[s] \iff (\mathfrak{A} \models \psi[s] \iff \mathfrak{A} \models \xi[s])$$
> 8. $$\mathfrak{A} \models \forall x \psi[s] \iff \forall t \in \vert \mathfrak{A} \vert \ \mathfrak{A} \models \psi[s_{x \mapsto t}]$$
> 9. $$\mathfrak{A} \models \exists x \psi[s] \iff \exists t \in \vert \mathfrak{A} \vert \ \mathfrak{A} \models \psi[s_{x \mapsto t}]$$
