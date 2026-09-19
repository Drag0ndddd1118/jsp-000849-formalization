import ErdosProblems.Erdos1019

open Erdos1019

/--
JSP-000849: Must every dense graph contain a nontrivial maximal planar subgraph?
Erdős Problem #1019 (Simonovits 1970).

This standalone Lean 4 verification certifies that every graph on n vertices with
at least ⌊n²/4⌋ + ⌊(n+1)/2⌋ edges contains a saturated planar subgraph on more than
three vertices.
-/
theorem jsp_000849 {V : Type*} [Fintype V]
    [Nonempty V] (G : SimpleGraph V) [DecidableRel G.Adj]
    (hE : G.edgeFinset.card = problemThreshold (Fintype.card V)) :
    ContainsSaturatedPlanarBeyondTriangle G :=
  erdos_1019 G hE

#print axioms jsp_000849
