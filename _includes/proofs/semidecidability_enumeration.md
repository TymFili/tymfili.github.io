($$\implies$$) Let $$X$$ be an algorithm that semidecides $$A$$. We construct an enumerator $$E$$ that searches the space $$\mathbb{N} \times \mathbb{N}$$ via dovetailing (step-bounding) to prevent divergence on non-halting inputs:

```text
b = 0
while True:
    for num from 0 to b:
        Simulate X on input 'num' for b steps
        if X halted and answered Yes:
            print num
    b = b + 1
```

If $$a \in A$$, the semidecision algorithm $$X(a)$$ halts in some finite number of steps $$k$$. For every step-bound $$b \ge \max\{a, k\}$$, the outer loop reaches $$(a, b)$$ in finite time and prints $$a$$. Conversely, if $$a \notin A$$, $$X(a)$$ never halts with Yes, so $$a$$ is never printed.

($$\impliedby$$) Let $$Y$$ be an algorithm that enumerates $$A$$. We construct a semidecision algorithm for $$A$$: on input $$n$$, execute $$Y$$ and monitor its output stream. If $$n$$ is ever printed, halt and output **Yes**; otherwise, continue running indefinitely.

<div style="text-align: right;">$$\boldsymbol{Q.E.D.}$$</div>
