Let $$\Gamma'_0 := \Gamma$$, and inductively define:
$$
\Gamma'_{n+1} := \Gamma'_n \cup \{\neg \forall x \phi_n(x) \rightarrow \neg \phi_n(c_{k_n})\}
$$
where $$c_{k_n}$$ is a fresh constant not occurring in any $$\phi_m$$ for $$m < n$$.

Let $$\varphi(n)$$ be the statement: *"$$\Gamma'_n$$ is consistent"*. Assume for contradiction that $$\Gamma'_{n+1}$$ is inconsistent. Then:
$$
\Gamma'_n \cup \{\neg \forall x \phi_n(x) \rightarrow \neg \phi_n(c_{k_n})\} \vdash \bot \implies \Gamma'_n \vdash \neg \forall x \phi_n(x) \land \phi_n(c_{k_n})
$$
This yields both $$\Gamma'_n \vdash \neg \forall x \phi_n(x)$$ and, by universal generalization on the fresh constant $$c_{k_n}$$, $$\Gamma'_n \vdash \forall x \phi_n(x)$$. Thus $$\Gamma'_n \vdash \bot$$, contradicting the consistency of $$\Gamma'_n$$.

By contraposition, each $$\Gamma'_n$$ is consistent. Let $$\Gamma' := \bigcup_{n \in \mathbb{N}} \Gamma'_n$$. Any formal derivation of $$\bot$$ from $$\Gamma'$$ is finite and thus contained in some $$\Gamma'_n$$. Hence $$\Gamma'$$ is consistent.

<div style="text-align: right;">$$\boldsymbol{Q.E.D.}$$</div>
