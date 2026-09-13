We show that $$\{\phi, \psi, (\phi \land \psi) \rightarrow \xi\} \vdash \xi$$ via Modus Ponens:

1. $$\phi \rightarrow \psi \rightarrow (\phi \land \psi)$$ (Axiom: Tautology)
2. $$\phi$$ (Assumption)
3. $$\psi \rightarrow (\phi \land \psi)$$ (Modus Ponens on 1, 2)
4. $$\psi$$ (Assumption)
5. $$\phi \land \psi$$ (Modus Ponens on 3, 4)
6. $$(\phi \land \psi) \rightarrow \xi$$ (Assumption)
7. $$\xi$$ (Modus Ponens on 5, 6)

<div style="text-align: right;">$$\boldsymbol{Q.E.D.}$$</div>
