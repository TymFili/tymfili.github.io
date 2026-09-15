Consider the power set lattice $$(\mathcal{P}(A), \subseteq)$$, which is complete. Define the mapping $$F \colon \mathcal{P}(A) \longrightarrow \mathcal{P}(A)$$ by:
$$
F(X) := A \setminus g(B \setminus f(X))
$$
Let $$X \subseteq Y \subseteq A$$. Since direct images preserve inclusion and complements reverse inclusion:
$$
f(X) \subseteq f(Y) \implies B \setminus f(Y) \subseteq B \setminus f(X) \implies g(B \setminus f(Y)) \subseteq g(B \setminus f(X))
$$
Taking the complement in $$A$$ reverses inclusion once more:
$$
A \setminus g(B \setminus f(X)) \subseteq A \setminus g(B \setminus f(Y)) \iff F(X) \subseteq F(Y)
$$
Thus $$F$$ is monotone. By the [Knaster–Tarski Theorem](#knaster-tarski), $$F$$ has a fixed point $$S \subseteq A$$:
$$
S = A \setminus g(B \setminus f(S)) \iff A \setminus S = g(B \setminus f(S))
$$
Since $$f$$ is injective, $$f \vert_S \colon S \longrightarrow f(S)$$ is a bijection. Since $$g$$ is injective, it maps $$B \setminus f(S)$$ bijectively onto $$A \setminus S$$, so $$g^{-1} \colon A \setminus S \longrightarrow B \setminus f(S)$$ is a bijection.

Define $$h \colon A \longrightarrow B$$ by:
$$
h(x) := \begin{cases} f(x) & \text{if } x \in S, \\ g^{-1}(x) & \text{if } x \in A \setminus S. \end{cases}
$$
Because $$S$$ and $$A \setminus S$$ partition $$A$$, and $$f(S)$$ and $$B \setminus f(S)$$ partition $$B$$, $$h$$ is a bijection.

<div style="text-align: right;">$$\boldsymbol{Q.E.D.}$$</div>
