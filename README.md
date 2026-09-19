# Standalone Lean 4 Formalization of JSP-000849 (Erdős Problem #1019)

This repository provides a standalone, independently verifiable Lean 4 formalization for **JSP-000849** (Erdős Problem #1019).

## Mathematical Problem
*Must every dense graph contain a nontrivial maximal planar subgraph?*

- **Mathematical solver**: Miklós Simonovits (1970).
- **Theorem**: Simonovits proved that every graph on $n \ge 1$ vertices with at least $\lfloor n^2/4 \rfloor + \lfloor (n+1)/2 \rfloor$ edges contains a saturated planar subgraph on more than three vertices (specifically $K_4$ or a bipyramid $C_\ell \vee 2K_1$).
- **Lean formalization**: OpenAI Codex, GPT-5.6 Sol (adapted from `plby/lean-proofs`).

## Verification
This repository compiles with standard Mathlib under Lean 4 (`v4.33.0`).

```bash
lake update
lake exe cache get
lake build
lake env lean JSP_000849.lean
```

Axiom audit results:
`#print axioms jsp_000849` depends strictly on:
- `propext`
- `Classical.choice`
- `Quot.sound`
With zero `sorry`, zero `admit`, and zero custom axioms.
