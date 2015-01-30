Require Import Reals.
Require Import Interval_tactic.
Open Scope R_scope.

Definition bounded x1 x2 x3 x4 x5 x6 :=
4 <= x6 <= 40401/10000 /\
4 <= x5 <= 40401/10000 /\
196/25 <= x4 <= 8 /\
4 <= x3 <= 40401/10000 /\
4 <= x2 <= 40401/10000 /\
196/25 <= x1 <= 8. 

Goal
forall x1 x2 x3 x4 x5 x6,
bounded x1 x2 x3 x4 x5 x6 ->
0 >= (((sqrt(x1)) * ((sqrt(x2)) * (sqrt(x3)))) + (((sqrt(x1)) * (((x2) + ((x3) + ((-1) * (x4)))) / (2))) + (((sqrt(x2)) * (((x1) + ((x3) + ((-1) * (x5)))) / (2))) + ((sqrt(x3)) * (((x1) + ((x2) + ((-1) * (x6)))) / (2)))))) * (-1).

Goal
forall x1 x2 x3 x4 x5 x6,
bounded x1 x2 x3 x4 x5 x6 ->
x6 >= 40401/10000.

Goal
forall x1 x2 x3 x4 x5 x6,
bounded x1 x2 x3 x4 x5 x6 ->
4 >= x6.

Goal
forall x1 x2 x3 x4 x5 x6,
bounded x1 x2 x3 x4 x5 x6 ->
x5 >= 40401/10000.

Goal
forall x1 x2 x3 x4 x5 x6,
bounded x1 x2 x3 x4 x5 x6 ->
4 >= x5.

Goal
forall x1 x2 x3 x4 x5 x6,
bounded x1 x2 x3 x4 x5 x6 ->
x4 >= 8.

Goal
forall x1 x2 x3 x4 x5 x6,
bounded x1 x2 x3 x4 x5 x6 ->
196/25 >= x4.

Goal
forall x1 x2 x3 x4 x5 x6,
bounded x1 x2 x3 x4 x5 x6 ->
x3 >= 40401/10000.

Goal
forall x1 x2 x3 x4 x5 x6,
bounded x1 x2 x3 x4 x5 x6 ->
4 >= x3.

Goal
forall x1 x2 x3 x4 x5 x6,
bounded x1 x2 x3 x4 x5 x6 ->
x2 >= 40401/10000.

Goal
forall x1 x2 x3 x4 x5 x6,
bounded x1 x2 x3 x4 x5 x6 ->
4 >= x2.

Goal
forall x1 x2 x3 x4 x5 x6,
bounded x1 x2 x3 x4 x5 x6 ->
x1 >= 8.

Goal
forall x1 x2 x3 x4 x5 x6,
bounded x1 x2 x3 x4 x5 x6 ->
196/25 >= x1.
