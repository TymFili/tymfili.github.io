Let $$\Gamma$$ be consistent. 

By the [Henkin Witness Construction](#henkin-constants) and [Lindenbaum's Lemma](#lindenbaum-lemma), we extend $$\Gamma$$ to a complete consistent theory $$\Delta$$ containing witness constants. 

By the [Fundamental Truth Lemma](#term-model-truth), the canonical quotient term structure $$\mathfrak{A}' := \mathfrak{A} / E^\mathfrak{A}$$ satisfies $$\Delta$$. Because $$\Gamma \subseteq \Delta$$, we have:
$$
\mathfrak{A}' \models \Gamma
$$
showing that every consistent theory has a model.

Now, if $$\Gamma \models \phi$$, then the set $$\Gamma \cup \{\neg \phi\}$$ cannot have a model and is therefore inconsistent:
$$
\Gamma \cup \{\neg \phi\} \vdash \bot \implies \Gamma \vdash \phi
$$

<div style="text-align: right;">$$\boldsymbol{Q.E.D.}$$</div>
