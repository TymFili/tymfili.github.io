> **Definition:** The *complexity* of a propositional formula is defined recursively by:
> 1. $$\operatorname{comp}(p) = 0$$ for any variable $$p \in \mathbf{Var}$$ and 0-ary connective $$c_n^0$$.
> 2. $$\operatorname{comp}(c_k^n(\varphi_1, \dots, \varphi_n)) = \max\{\operatorname{comp}(\varphi_1), \dots, \operatorname{comp}(\varphi_n)\} + 1$$.
