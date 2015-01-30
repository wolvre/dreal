Require Import Reals.
Require Import Interval_tactic.
Open Scope R_scope.

Definition bounded x1 x2 x3 x4 x5 x6 :=
1 <= x6 <= 1 /\
1 <= x5 <= 1 /\
1 <= x4 <= 1 /\
1 <= x3 <= 1 /\
1 <= x2 <= 1 /\
1 <= x1 <= 63/50. 

Goal
forall x1 x2 x3 x4 x5 x6,
bounded x1 x2 x3 x4 x5 x6 ->
0 >= (591/1000) + ((-5627/5000) + ((((63/50) + ((-1) * (x1))) / (13/50)) * (253/500))).

Goal
forall x1 x2 x3 x4 x5 x6,
bounded x1 x2 x3 x4 x5 x6 ->
x6 >= 1.

Goal
forall x1 x2 x3 x4 x5 x6,
bounded x1 x2 x3 x4 x5 x6 ->
1 >= x6.

Goal
forall x1 x2 x3 x4 x5 x6,
bounded x1 x2 x3 x4 x5 x6 ->
x5 >= 1.

Goal
forall x1 x2 x3 x4 x5 x6,
bounded x1 x2 x3 x4 x5 x6 ->
1 >= x5.

Goal
forall x1 x2 x3 x4 x5 x6,
bounded x1 x2 x3 x4 x5 x6 ->
x4 >= 1.

Goal
forall x1 x2 x3 x4 x5 x6,
bounded x1 x2 x3 x4 x5 x6 ->
1 >= x4.

Goal
forall x1 x2 x3 x4 x5 x6,
bounded x1 x2 x3 x4 x5 x6 ->
x3 >= 1.

Goal
forall x1 x2 x3 x4 x5 x6,
bounded x1 x2 x3 x4 x5 x6 ->
1 >= x3.

Goal
forall x1 x2 x3 x4 x5 x6,
bounded x1 x2 x3 x4 x5 x6 ->
x2 >= 1.

Goal
forall x1 x2 x3 x4 x5 x6,
bounded x1 x2 x3 x4 x5 x6 ->
1 >= x2.

Goal
forall x1 x2 x3 x4 x5 x6,
bounded x1 x2 x3 x4 x5 x6 ->
x1 >= 63/50.

Goal
forall x1 x2 x3 x4 x5 x6,
bounded x1 x2 x3 x4 x5 x6 ->
1 >= x1.
