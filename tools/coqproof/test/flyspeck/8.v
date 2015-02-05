Require Import Reals.
Require Import Interval_tactic.
Open Scope R_scope.

Definition bounded_0 x1 x2 x3 x4 x5 x6 :=
196/25 <= x6 <= 8 /\
4 <= x5 <= 40401/10000 /\
4 <= x4 <= 40401/10000 /\
196/25 <= x3 <= 8 /\
4 <= x2 <= 40401/10000 /\
4 <= x1 <= 40401/10000. 

Goal
forall x1 x2 x3 x4 x5 x6,
bounded_0 x1 x2 x3 x4 x5 x6 ->
0 >= (((((-1) * (x2)) * (x3)) + ((-1) * ((x1) * (x4)))) + (((x2) * (x5)) + ((((x3) * (x6)) + ((-1) * ((x5) * (x6)))) + ((x1) * (((-1) * (x1)) + ((x2) + (((x3) + ((-1) * (x4))) + ((x5) + (x6))))))))) * (-1).

Goal
forall x1 x2 x3 x4 x5 x6,
bounded_0 x1 x2 x3 x4 x5 x6 ->
x6 >= 8.

Goal
forall x1 x2 x3 x4 x5 x6,
bounded_0 x1 x2 x3 x4 x5 x6 ->
196/25 >= x6.

Goal
forall x1 x2 x3 x4 x5 x6,
bounded_0 x1 x2 x3 x4 x5 x6 ->
x5 >= 40401/10000.

Goal
forall x1 x2 x3 x4 x5 x6,
bounded_0 x1 x2 x3 x4 x5 x6 ->
4 >= x5.

Goal
forall x1 x2 x3 x4 x5 x6,
bounded_0 x1 x2 x3 x4 x5 x6 ->
x4 >= 40401/10000.

Goal
forall x1 x2 x3 x4 x5 x6,
bounded_0 x1 x2 x3 x4 x5 x6 ->
4 >= x4.

Goal
forall x1 x2 x3 x4 x5 x6,
bounded_0 x1 x2 x3 x4 x5 x6 ->
x3 >= 8.

Goal
forall x1 x2 x3 x4 x5 x6,
bounded_0 x1 x2 x3 x4 x5 x6 ->
196/25 >= x3.

Goal
forall x1 x2 x3 x4 x5 x6,
bounded_0 x1 x2 x3 x4 x5 x6 ->
x2 >= 40401/10000.

Goal
forall x1 x2 x3 x4 x5 x6,
bounded_0 x1 x2 x3 x4 x5 x6 ->
4 >= x2.

Goal
forall x1 x2 x3 x4 x5 x6,
bounded_0 x1 x2 x3 x4 x5 x6 ->
x1 >= 40401/10000.

Goal
forall x1 x2 x3 x4 x5 x6,
bounded_0 x1 x2 x3 x4 x5 x6 ->
4 >= x1.
