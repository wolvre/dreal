Require Import Reals.
Require Import Interval_tactic.
Open Scope R_scope.

Definition bounded_0 d1 d2 e1 e2 t x1 x2 y1 y2 :=
10 <= y2 <= 1/0 /\
10 <= y1 <= 1/0 /\
-1/0 <= x2 <= -1 /\
-1/0 <= x1 <= -9 /\
0 <= t <= 10 /\
1/10 <= e2 <= 3/20 /\
1/10 <= e1 <= 3/20 /\
1/10 <= d2 <= 3/20 /\
1/10 <= d1 <= 3/20. 

Goal
forall d1 d2 e1 e2 t x1 x2 y1 y2,
bounded_0 d1 d2 e1 e2 t x1 x2 y1 y2 ->
2 <= (Rsqr(((((x1) + ((-1) * (y1))) + ((-1) * ((100) * (d2)))) + ((-1) * ((100) * (e2)))) + (((((100) * (d2)) + ((100) * (e2))) * (cos((1/100) * (t)))) + ((sin((1/100) * (t))) * (((100) * (d1)) + ((-1) * ((100) * (e1)))))))) + (Rsqr(((((x2) + ((-1) * (y2))) + ((100) * (d1))) + ((100) * (e1))) + (((((-100) * (d1)) + ((-100) * (e1))) * (cos((1/100) * (t)))) + ((sin((1/100) * (t))) * (((100) * (d1)) + ((-1) * ((100) * (e2)))))))).

Goal
forall d1 d2 e1 e2 t x1 x2 y1 y2,
bounded_0 d1 d2 e1 e2 t x1 x2 y1 y2 ->
e2 >= 3/20.

Goal
forall d1 d2 e1 e2 t x1 x2 y1 y2,
bounded_0 d1 d2 e1 e2 t x1 x2 y1 y2 ->
1/10 >= e2.

Goal
forall d1 d2 e1 e2 t x1 x2 y1 y2,
bounded_0 d1 d2 e1 e2 t x1 x2 y1 y2 ->
e1 >= 3/20.

Goal
forall d1 d2 e1 e2 t x1 x2 y1 y2,
bounded_0 d1 d2 e1 e2 t x1 x2 y1 y2 ->
1/10 >= e1.

Goal
forall d1 d2 e1 e2 t x1 x2 y1 y2,
bounded_0 d1 d2 e1 e2 t x1 x2 y1 y2 ->
d2 >= 3/20.

Goal
forall d1 d2 e1 e2 t x1 x2 y1 y2,
bounded_0 d1 d2 e1 e2 t x1 x2 y1 y2 ->
1/10 >= d2.

Goal
forall d1 d2 e1 e2 t x1 x2 y1 y2,
bounded_0 d1 d2 e1 e2 t x1 x2 y1 y2 ->
d1 >= 3/20.

Goal
forall d1 d2 e1 e2 t x1 x2 y1 y2,
bounded_0 d1 d2 e1 e2 t x1 x2 y1 y2 ->
1/10 >= d1.

Goal
forall d1 d2 e1 e2 t x1 x2 y1 y2,
bounded_0 d1 d2 e1 e2 t x1 x2 y1 y2 ->
10 >= y2.

Goal
forall d1 d2 e1 e2 t x1 x2 y1 y2,
bounded_0 d1 d2 e1 e2 t x1 x2 y1 y2 ->
10 >= y1.

Goal
forall d1 d2 e1 e2 t x1 x2 y1 y2,
bounded_0 d1 d2 e1 e2 t x1 x2 y1 y2 ->
x2 >= -1.

Goal
forall d1 d2 e1 e2 t x1 x2 y1 y2,
bounded_0 d1 d2 e1 e2 t x1 x2 y1 y2 ->
x1 >= -9.

Goal
forall d1 d2 e1 e2 t x1 x2 y1 y2,
bounded_0 d1 d2 e1 e2 t x1 x2 y1 y2 ->
t >= 10.

Goal
forall d1 d2 e1 e2 t x1 x2 y1 y2,
bounded_0 d1 d2 e1 e2 t x1 x2 y1 y2 ->
0 >= t.
