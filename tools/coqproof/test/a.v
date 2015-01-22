Require Import Reals.
Require Import Interval_tactic.

Goal
  forall x, (-1 <= x <= 1)%R ->
  (sqrt (1 - x) <= 3/2)%R.
Proof.
  intros.
  interval.
Qed.

Goal
  forall x, (1/2 <= x <= 2)%R ->
  (Rabs (sqrt x - (((((122 / 7397 * x + (-1733) / 13547) * x
                   + 529 / 1274) * x + (-767) / 999) * x
                   + 407 / 334) * x + 227 / 925))
    <= 5/65536)%R.
Proof.
  intros.
  interval with (i_bisect_taylor x 3).
Qed.

Goal
forall x1 x2,
(-7 <= x2 <= 5)%R /\
(3 <= x1 <= 3535325707485839/1125899906842624)%R -> 
(1256637/200000 + -1 * 2 * x1 * sin(cos(797/1000) * sin(62831853/20000000 / x1)) <= 591/1000 + -1 * 331/10000 * x2 + 753/500)%R /\
(x2 <= 5)%R /\
(-7 <= x2)%R /\
(x1 <= 157/50)%R /\
(3 <= x1)%R.
Proof.
intros.
interval.
Qed.



