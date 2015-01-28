Require Import Reals.
Require Import Interval_tactic.

Definition bounded x1 x2 x3 x4 x5 x6 :=
(196/25 <= x6 <= 8)%R /\
(4 <= x5 <= 40401/10000)%R /\
(4 <= x4 <= 40401/10000)%R /\
(196/25 <= x3 <= 8)%R /\
(4 <= x2 <= 40401/10000)%R /\
(4 <= x1 <= 40401/10000)%R. 

Goal
forall x1 x2 x3 x4 x5 x6,
bounded x1 x2 x3 x4 x5 x6 ->
(0 >= (((((-1) * (x2)) * (x3)) + ((-1) * ((x1) * (x4)))) + (((x2) * (x5)) + ((((x3) * (x6)) + ((-1) * ((x5) * (x6)))) + ((x1) * (((-1) * (x1)) + ((x2) + (((x3) + ((-1) * (x4))) + ((x5) + (x6))))))))) * (-1))%R.

Goal
forall x1 x2 x3 x4 x5 x6,
bounded x1 x2 x3 x4 x5 x6 ->
(x6 >= 8)%R.

Goal
forall x1 x2 x3 x4 x5 x6,
bounded x1 x2 x3 x4 x5 x6 ->
(196/25 >= x6)%R.

Goal
forall x1 x2 x3 x4 x5 x6,
bounded x1 x2 x3 x4 x5 x6 ->
(x5 >= 40401/10000)%R.

Goal
forall x1 x2 x3 x4 x5 x6,
bounded x1 x2 x3 x4 x5 x6 ->
(4 >= x5)%R.

Goal
forall x1 x2 x3 x4 x5 x6,
bounded x1 x2 x3 x4 x5 x6 ->
(x4 >= 40401/10000)%R.

Goal
forall x1 x2 x3 x4 x5 x6,
bounded x1 x2 x3 x4 x5 x6 ->
(4 >= x4)%R.

Goal
forall x1 x2 x3 x4 x5 x6,
bounded x1 x2 x3 x4 x5 x6 ->
(x3 >= 8)%R.

Goal
forall x1 x2 x3 x4 x5 x6,
bounded x1 x2 x3 x4 x5 x6 ->
(196/25 >= x3)%R.

Goal
forall x1 x2 x3 x4 x5 x6,
bounded x1 x2 x3 x4 x5 x6 ->
(x2 >= 40401/10000)%R.

Goal
forall x1 x2 x3 x4 x5 x6,
bounded x1 x2 x3 x4 x5 x6 ->
(4 >= x2)%R.

Goal
forall x1 x2 x3 x4 x5 x6,
bounded x1 x2 x3 x4 x5 x6 ->
(x1 >= 40401/10000)%R.

Goal
forall x1 x2 x3 x4 x5 x6,
bounded x1 x2 x3 x4 x5 x6 ->
(4 >= x1)%R.
