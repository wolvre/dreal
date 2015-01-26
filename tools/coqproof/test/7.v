Require Import Reals.
Require Import Interval_tactic.

Goal
forall x1 x2 x3 x4 x5 x6,
(4 <= x6 <= 40401/10000)%R /\
(4 <= x5 <= 40401/10000)%R /\
(196/25 <= x4 <= 8)%R /\
(4 <= x3 <= 40401/10000)%R /\
(4 <= x2 <= 40401/10000)%R /\
(196/25 <= x1 <= 8)%R -> 
(0 >= x1 ^ 1/2 * x2 ^ 1/2 * x3 ^ 1/2 + x1 ^ 1/2 * x2 + x3 + -1 * x4 / 2 + x2 ^ 1/2 * x1 + x3 + -1 * x5 / 2 + x3 ^ 1/2 * x1 + x2 + -1 * x6 / 2 * -1)%R.
Proof.
intros.
interval with (i_bisect x4, i_bisect x5, i_bisect x3, i_bisect x1, i_bisect x6, i_bisect x2).

