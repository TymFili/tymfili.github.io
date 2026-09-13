It suffices to show that there exists no surjection $$f \colon A \longrightarrow \mathcal{P}(A)$$. 

Suppose for contradiction that such a surjection exists and define a set:
$$
B := \{x \in A \mid x \notin f(x)\}
$$
Then $$B = f(a)$$ for some $$a \in A$$, so:
$$
a \in B \iff a \notin f(a) \iff a \notin B
$$
which is a contradiction.

<div style="text-align: right;">$$\boldsymbol{Q.E.D.}$$</div>
