Uniqueness follows from the fact that the only automorphism of a well-ordered set is the identity.

Given a well-ordered set $$X$$, define the class function:
$$
F(x) := \alpha \iff (X, \le)_x \cong_{\operatorname{Ord}} (\alpha, \in)
$$
If such an $$\alpha$$ exists, it is unique. By the Axiom of Replacement, $$F(X)$$ is a set of ordinals. 

Such an $$\alpha$$ exists for every $$x \in X$$ (otherwise, consider the least $$x \in X$$ for which it does not). The set $$F(X)$$ is an initial segment of $$\mathbf{Ord}$$. 

Let $$\gamma := \min(\mathbf{Ord} \setminus F(X))$$, which exists by the well-foundedness of the class $$\mathbf{Ord}$$. Then $$F(X) = \gamma \in \mathbf{Ord}$$, and $$F$$ defines an order isomorphism $$(X, \le) \cong_{\operatorname{Ord}} (\gamma, \in)$$.

<div style="text-align: right;">$$\boldsymbol{Q.E.D.}$$</div>
