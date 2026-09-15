> **Definition:** A *lattice* is a triple $$(L, \land, \lor)$$ satisfying for all $$x, y, z \in L$$:
> 1. **Commutativity:** $$x \land y = y \land x$$ and $$x \lor y = y \lor x$$
> 2. **Associativity:** $$(x \land y) \land z = x \land (y \land z)$$ and $$(x \lor y) \lor z = x \lor (y \lor z)$$
> 3. **Absorption:** $$x \land (x \lor y) = x$$ and $$x \lor (x \land y) = x$$
> 
> The natural partial order is defined by $$x \le y \iff x \land y = x$$, under which $$x \land y = \inf\{x, y\}$$ and $$x \lor y = \sup\{x, y\}$$.
