> **Definition:** 
> * For relations $$R \subseteq A \times B$$ and $$S \subseteq B \times C$$, relational composition is:
>   $$
>   RS := \{(a, c) \in A \times C \mid \exists b \ ((a, b) \in R \land (b, c) \in S)\}
>   $$
> * For functions $$f \colon A \longrightarrow B$$ and $$g \colon B \longrightarrow C$$, function composition $$g \circ f \colon A \longrightarrow C$$ is:
>   $$
>   g \circ f := \{(a, c) \in A \times C \mid \exists b \ (f(a) = b \land g(b) = c)\}
>   $$
