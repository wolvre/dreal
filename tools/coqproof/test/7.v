Require Import Reals.
Require Import Interval_tactic.

Definition bounded x1 x2 x3 x4 x5 x6 :=
(4 <= x6 <= 40401/10000)%R /\
(4 <= x5 <= 40401/10000)%R /\
(196/25 <= x4 <= 8)%R /\
(4 <= x3 <= 40401/10000)%R /\
(4 <= x2 <= 40401/10000)%R /\
(196/25 <= x1 <= 8)%R. 

Goal
forall x1 x2 x3 x4 x5 x6,
bounded x1 x2 x3 x4 x5 x6 ->
(0 >= ((((x1) ^ (1/2)) * (((x2) ^ (1/2)) * ((x3) ^ (1/2)))) + ((((x1) ^ (1/2)) * (((x2) + ((x3) + ((-1) * (x4)))) / (2))) + ((((x2) ^ (1/2)) * (((x1) + ((x3) + ((-1) * (x5)))) / (2))) + (((x3) ^ (1/2)) * (((x1) + ((x2) + ((-1) * (x6)))) / (2)))))) * (-1))%R.

Goal
forall x1 x2 x3 x4 x5 x6,
bounded x1 x2 x3 x4 x5 x6 ->
(x6 >= 40401/10000)%R.

Goal
forall x1 x2 x3 x4 x5 x6,
bounded x1 x2 x3 x4 x5 x6 ->
(4 >= x6)%R.

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
(x4 >= 8)%R.

Goal
forall x1 x2 x3 x4 x5 x6,
bounded x1 x2 x3 x4 x5 x6 ->
(196/25 >= x4)%R.

Goal
forall x1 x2 x3 x4 x5 x6,
bounded x1 x2 x3 x4 x5 x6 ->
(x3 >= 40401/10000)%R.

Goal
forall x1 x2 x3 x4 x5 x6,
bounded x1 x2 x3 x4 x5 x6 ->
(4 >= x3)%R.

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
(x1 >= 8)%R.

Goal
forall x1 x2 x3 x4 x5 x6,
bounded x1 x2 x3 x4 x5 x6 ->
(196/25 >= x1)%R.
