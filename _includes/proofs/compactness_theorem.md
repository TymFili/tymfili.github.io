($$\implies$$) Trivial, since any valuation satisfying $$\Sigma$$ satisfies all its finite subsets.

($$\impliedby$$) Let $$\phi_0, \phi_1, \dots$$ be an enumeration of all propositional formulae. Define:
$$
\Delta_0 := \Sigma, \qquad \Delta_{n+1} := \begin{cases} \Delta_n \cup \{\phi_n\} & \text{if finitely satisfiable}, \\ \Delta_n \cup \{\neg \phi_n\} & \text{otherwise}. \end{cases}
$$
Let $$\Delta := \bigcup_{n \in \mathbb{N}} \Delta_n$$. Then $$\Delta$$ is finitely satisfiable. 

For any propositional variable $$p$$, define $$\mathcal{I}(p) = \mathrm{True} \iff p \in \Delta$$. By structural induction on formulae, the extended interpretation $$\hat{\mathcal{I}}$$ satisfies $$\Delta$$, and thus satisfies $$\Sigma \subseteq \Delta$$.

<div style="text-align: right;">$$\boldsymbol{Q.E.D.}$$</div>
