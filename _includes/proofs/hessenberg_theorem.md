It suffices to prove $$\kappa \cdot \kappa = \kappa$$.

Assume by transfinite induction that $$\alpha \cdot \alpha = \alpha$$ holds for all infinite cardinals $$\alpha < \kappa$$. Define the max-lexicographic well-ordering $$\prec$$ on $$\kappa \times \kappa$$:
$$
(\alpha, \beta) \prec (\gamma, \delta) \iff \begin{cases} \max\{\alpha, \beta\} < \max\{\gamma, \delta\}, \text{ or} \\ \max\{\alpha, \beta\} = \max\{\gamma, \delta\} \land \alpha < \gamma, \text{ or} \\ \max\{\alpha, \beta\} = \max\{\gamma, \delta\} \land \alpha = \gamma \land \beta < \delta. \end{cases}
$$
For any $$(\alpha, \beta) \in \kappa \times \kappa$$, let $$\gamma = \max\{\alpha, \beta\} < \kappa$$. The initial segment preceding $$(\alpha, \beta)$$ is contained in $$(\gamma + 1) \times (\gamma + 1)$$. 

By induction, $$\vert (\gamma + 1) \times (\gamma + 1) \vert = \vert \gamma + 1 \vert < \kappa$$. Thus every proper initial segment of $$(\kappa \times \kappa, \prec)$$ has cardinality strictly less than $$\kappa$$. The order type cannot reach $$\kappa^+$$, so $$\vert \kappa \times \kappa \vert \le \kappa$$. Combining with the diagonal injection $$\kappa \hookrightarrow \kappa \times \kappa$$ yields:
$$
\kappa \cdot \kappa = \kappa
$$
For $$\kappa \le \lambda$$:
$$
\lambda \le \kappa + \lambda \le \kappa \cdot \lambda \le \lambda \cdot \lambda = \lambda \implies \kappa + \lambda = \kappa \cdot \lambda = \lambda = \max\{\kappa, \lambda\}
$$

<div style="text-align: right;">$$\boldsymbol{Q.E.D.}$$</div>
