Require Import Reals.
Require Import Interval_tactic.

Definition bounded x1 x2 x3 x4 x5 x6 :=
(1 <= x6 <= 1)%R /\
(1 <= x5 <= 1)%R /\
(1 <= x4 <= 1)%R /\
(1 <= x3 <= 1)%R /\
(1 <= x2 <= 1)%R /\
(1 <= x1 <= 63/50)%R. 

Goal
forall x1 x2 x3 x4 x5 x6,
bounded x1 x2 x3 x4 x5 x6 ->
(0 >= (591/1000) + ((-5627/5000) + ((((63/50) + ((-1) * (x1))) / (13/50)) * (253/500))))%R.

Goal
forall x1 x2 x3 x4 x5 x6,
bounded x1 x2 x3 x4 x5 x6 ->
(x6 >= 1)%R.

Goal
forall x1 x2 x3 x4 x5 x6,
bounded x1 x2 x3 x4 x5 x6 ->
(1 >= x6)%R.

Goal
forall x1 x2 x3 x4 x5 x6,
bounded x1 x2 x3 x4 x5 x6 ->
(x5 >= 1)%R.

Goal
forall x1 x2 x3 x4 x5 x6,
bounded x1 x2 x3 x4 x5 x6 ->
(1 >= x5)%R.

Goal
forall x1 x2 x3 x4 x5 x6,
bounded x1 x2 x3 x4 x5 x6 ->
(x4 >= 1)%R.

Goal
forall x1 x2 x3 x4 x5 x6,
bounded x1 x2 x3 x4 x5 x6 ->
(1 >= x4)%R.

Goal
forall x1 x2 x3 x4 x5 x6,
bounded x1 x2 x3 x4 x5 x6 ->
(x3 >= 1)%R.

Goal
forall x1 x2 x3 x4 x5 x6,
bounded x1 x2 x3 x4 x5 x6 ->
(1 >= x3)%R.

Goal
forall x1 x2 x3 x4 x5 x6,
bounded x1 x2 x3 x4 x5 x6 ->
(x2 >= 1)%R.

Goal
forall x1 x2 x3 x4 x5 x6,
bounded x1 x2 x3 x4 x5 x6 ->
(1 >= x2)%R.

Goal
forall x1 x2 x3 x4 x5 x6,
bounded x1 x2 x3 x4 x5 x6 ->
(x1 >= 63/50)%R.

Goal
forall x1 x2 x3 x4 x5 x6,
bounded x1 x2 x3 x4 x5 x6 ->
(1 >= x1)%R.
