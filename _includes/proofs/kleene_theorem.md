($$\implies$$) If $$A$$ is decidable, there exists a decider $$M$$ that halts on every input $$n \in \mathbb{N}$$, answering Yes or No.
* A semidecider for $$A$$ runs $$M(n)$$; if $$M$$ outputs Yes, it halts with Yes; if $$M$$ outputs No, it loops indefinitely.
* A semidecider for $$A^c$$ runs $$M(n)$$; if $$M$$ outputs No, it halts with Yes; if $$M$$ outputs Yes, it loops indefinitely.

($$\impliedby$$) Let $$M_1$$ be a semidecider for $$A$$, and let $$M_2$$ be a semidecider for $$A^c$$. We construct a total decider $$M$$ for $$A$$:

On input $$n$$, simulate $$M_1(n)$$ and $$M_2(n)$$ in parallel by alternating execution steps (one step of $$M_1$$, then one step of $$M_2$$).

Because $$A \cup A^c = \mathbb{N}$$ and $$A \cap A^c = \emptyset$$, for any input $$n$$, exactly one of the two conditions holds:
* If $$n \in A$$, $$M_1(n)$$ halts in finite time: halt the simulation and output **Yes**.
* If $$n \notin A$$, then $$n \in A^c$$, so $$M_2(n)$$ halts in finite time: halt the simulation and output **No**.

Because one branch is guaranteed to halt in finite time, $$M$$ is a total decision algorithm. Hence $$A$$ is decidable.

<div style="text-align: right;">$$\boldsymbol{Q.E.D.}$$</div>
