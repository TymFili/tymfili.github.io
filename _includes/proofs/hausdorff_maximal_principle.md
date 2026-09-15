From the Axiom of Choice ($$\mathbf{AC}$$), let $$g \colon \mathcal{P}(X) \setminus \{\emptyset\} \longrightarrow X$$ be a choice function. 

For any chain $$A \subseteq X$$, define the set of candidate extensions:
$$
E_A := \{x \in X \setminus A \mid A \cup \{x\} \text{ is a chain}\}
$$
Define $$f \colon \operatorname{Chains}(X) \longrightarrow \operatorname{Chains}(X)$$ by:
$$
f(A) := \begin{cases} A \cup \{g(E_A)\} & \text{if } E_A \ne \emptyset, \\ A & \text{if } E_A = \emptyset. \end{cases}
$$
Notice that $$A$$ is a maximal chain in $$X$$ if and only if $$f(A) = A$$.

We call a subcollection $$\mathcal{I} \subseteq \operatorname{Chains}(X)$$ a **tower** if:
1. $$\emptyset \in \mathcal{I}$$,
2. $$A \in \mathcal{I} \rightarrow f(A) \in \mathcal{I}$$,
3. If $$\mathcal{C} \subseteq \mathcal{I}$$ is a chain under inclusion $$\subseteq$$, then $$\bigcup \mathcal{C} \in \mathcal{I}$$.

Towers exist because $$\operatorname{Chains}(X)$$ is itself a tower. Let $$\mathcal{I}_0$$ be the intersection of all towers; it is the minimal tower.

An element $$A \in \mathcal{I}_0$$ is defined to be **comparable** if $$\forall B \in \mathcal{I}_0 \ (A \subseteq B \lor B \subseteq A)$$. Fix a comparable element $$A \in \mathcal{I}_0$$ (such as $$\emptyset$$), and define:
$$
\mathcal{A}_A := \{B \in \mathcal{I}_0 \mid f(A) \subseteq B \lor B \subseteq A\}
$$
One verifies that $$\mathcal{A}_A$$ is a tower, so by minimality, $$\mathcal{A}_A = \mathcal{I}_0$$. 

Now define $$\mathcal{B} := \{A \in \mathcal{I}_0 \mid A \text{ is comparable}\}$$. Because $$\mathcal{A}_A = \mathcal{I}_0$$ for every comparable $$A$$, $$\mathcal{B}$$ is also a tower, meaning $$\mathcal{B} = \mathcal{I}_0$$.

Hence, every element of $$\mathcal{I}_0$$ is comparable, so $$\mathcal{I}_0$$ is itself a chain. By condition 3 of towers, $$M := \bigcup \mathcal{I}_0 \in \mathcal{I}_0$$. Applying condition 2 gives $$f(M) \in \mathcal{I}_0$$, so $$f(M) \subseteq M$$. Since $$M \subseteq f(M)$$, we have $$f(M) = M$$, proving that $$M$$ is a maximal chain.

<div style="text-align: right;">$$\boldsymbol{Q.E.D.}$$</div>
