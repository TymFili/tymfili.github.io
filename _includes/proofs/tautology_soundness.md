Let $$\varphi(n)$$ be the statement: *"The thesis holds for all proofs of length $$k \le n$$"*. We proceed by induction on $$n$$.

* **Base Case:** $$\varphi(0)$$ holds vacuously.
* **Inductive Step:** Assume $$\varphi(n)$$. If the $$(n+1)$$-th formula $$P_{n+1}$$ is a tautology, then $$\Sigma \models P_{n+1}$$. If $$P_{n+1} \in \Sigma$$ is an assumption, then trivially $$\Sigma \models P_{n+1}$$. If $$P_{n+1}$$ is obtained by Modus Ponens from preceding formulae $$P_i$$ and $$P_j = P_i \rightarrow P_{n+1}$$, then by the inductive hypothesis $$\Sigma \models P_i$$ and $$\Sigma \models P_i \rightarrow P_{n+1}$$, which implies $$\Sigma \models P_{n+1}$$.

<div style="text-align: right;">$$\boldsymbol{Q.E.D.}$$</div>
