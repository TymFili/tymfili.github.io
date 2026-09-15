> **Definition:** The set of *free variables* $$\mathbf{FV}(\varphi)$$ of a formula $$\varphi$$ is defined recursively by:
> * $$\mathbf{FV}(R t_1 \dots t_n) := \bigcup_{k=1}^n \mathbf{Var}(t_k)$$
> * $$\mathbf{FV}(= t_1 t_2) := \mathbf{Var}(t_1) \cup \mathbf{Var}(t_2)$$
> * $$\mathbf{FV}(\neg \varphi) := \mathbf{FV}(\varphi)$$
> * $$\mathbf{FV}(\ast \varphi \psi) := \mathbf{FV}(\varphi) \cup \mathbf{FV}(\psi)$$ for binary connectives $$\ast$$
> * $$\mathbf{FV}(\ast x \ \varphi) := \mathbf{FV}(\varphi) \setminus \{x\}$$ for quantifiers $$\ast \in \{\forall, \exists\}$$
