It suffices to prove that $$\kappa \cdot \kappa = \kappa$$.

Assume by transfinite induction that $$\alpha \cdot \alpha = \alpha$$ holds for all infinite cardinals $$\alpha < \kappa$$. Define the max-lexicographic well-ordering $$\prec$$ on $$\kappa \times \kappa$$:
$$
(\alpha, \beta) \prec (\gamma, \delta) \iff \begin{cases} \max\{\alpha, \beta\} < \max\{\gamma, \delta\}, \text{ or} \\ \max\{\alpha, \beta\} = \max\{\gamma, \delta\} \land \alpha < \gamma, \text{ or} \\ \max\{\alpha, \beta\} = \max\{\gamma, \delta\} \land \alpha = \gamma \land \beta < \delta. \end{cases}
$$
For any $$(\alpha, \beta) \in \kappa \times \kappa$$, let $$\gamma := \max\{\alpha, \beta\} < \kappa$$. The initial segment of $$(\alpha, \beta)$$ is contained in $$(\gamma + 1) \times (\gamma + 1)$$. By induction, $$\vert (\gamma + 1) \times (\gamma + 1) \vert = \vert \gamma + 1 \vert < \kappa$$. 

Thus every proper initial segment of $$(\kappa \times \kappa, \prec)$$ has cardinality strictly less than $$\kappa$$, so its order type cannot reach $$\kappa^+$$, implying $$\vert \kappa \times \kappa \vert \le \kappa$$. By the diagonal injection $$\kappa \hookrightarrow \kappa \times \kappa$$, we conclude $$\kappa \cdot \kappa = \kappa$$.

<div style="text-align: right;">$$\boldsymbol{Q.E.D.}$$</div>
