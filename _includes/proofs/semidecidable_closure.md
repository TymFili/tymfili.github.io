Let $$A, B \subseteq \mathbb{N}$$ be semidecidable, with semideciders $$M_A$$ and $$M_B$$.

1. **Closure under Union ($$A \cup B$$):**  
   On input $$n$$, simulate $$M_A(n)$$ and $$M_B(n)$$ in parallel by alternating execution steps. If either machine halts and outputs Yes, halt immediately and output **Yes**. If $$n \in A \cup B$$, at least one simulation halts in finite time; if $$n \notin A \cup B$$, both run indefinitely.
2. **Closure under Intersection ($$A \cap B$$):**  
   On input $$n$$, sequentially execute $$M_A(n)$$. If it halts and outputs Yes, execute $$M_B(n)$$. If both halt with Yes, output **Yes**. If either input fails to belong to the respective set, the sequential execution never completes.

<div style="text-align: right;">$$\boldsymbol{Q.E.D.}$$</div>
