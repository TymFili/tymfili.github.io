It suffices to prove $$(0, 1) \sim (0, 1)^2$$. 

1. **Injection $$g \colon (0, 1) \longrightarrow (0, 1)^2$$:** $$g(x) := (x, 1/2)$$.
2. **Injection $$f \colon (0, 1)^2 \longrightarrow (0, 1)$$:** Represent elements via non-terminating decimal expansions without trailing nines:
   $$
   x = 0.x_1 x_2 x_3 \dots, \quad y = 0.y_1 y_2 y_3 \dots
   $$
   Interleave digits:
   $$
   f(x, y) := 0.x_1 y_1 x_2 y_2 x_3 y_3 \dots
   $$
   Because neither sequence ends in trailing nines, the interleaved expansion does not end in trailing nines, ensuring injectivity.

By the Schröder–Bernstein Theorem (which is constructive), $$(0, 1) \sim (0, 1)^2$$.

<div style="text-align: right;">$$\boldsymbol{Q.E.D.}$$</div>
