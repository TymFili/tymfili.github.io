Let $$\phi_0, \phi_1, \dots$$ be an enumeration of all first-order formulae in the language. Define:
$$
\Delta_0 := \Gamma, \qquad \Delta_{n+1} := \begin{cases} \Delta_n \cup \{\phi_n\} & \text{if consistent}, \\ \Delta_n \cup \{\neg \phi_n\} & \text{otherwise}. \end{cases}
$$
If both $$\Delta_n \cup \{\phi_n\} \vdash \bot$$ and $$\Delta_n \cup \{\neg \phi_n\} \vdash \bot$$, then by Proof by Contradiction, $$\Delta_n \vdash \neg \phi_n$$ and $$\Delta_n \vdash \phi_n$$, implying $$\Delta_n \vdash \bot$$. Thus consistency is preserved at every step.

Let $$\Delta := \bigcup_{n \in \mathbb{N}} \Delta_n$$. Since any formal contradiction would arise from a finite subset contained in some $$\Delta_n$$, $$\Delta$$ is consistent and maximally complete.

<div style="text-align: right;">$$\boldsymbol{Q.E.D.}$$</div>
