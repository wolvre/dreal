Require Import Reals.
Require Import Interval_tactic.

Definition bounded d1 d2 e1 e2 t x1 x2 y1 y2 :=
(10 <= y2 <= 0)%R /\
(10 <= y1 <= 0)%R /\
(0 <= x2 <= -1)%R /\
(0 <= x1 <= -9)%R /\
(0 <= t <= 10)%R /\
(1/10 <= e2 <= 3/20)%R /\
(1/10 <= e1 <= 3/20)%R /\
(1/10 <= d2 <= 3/20)%R /\
(1/10 <= d1 <= 3/20)%R. 

Goal
forall d1 d2 e1 e2 t x1 x2 y1 y2,
bounded d1 d2 e1 e2 t x1 x2 y1 y2 ->
(2 <= ((((((x1) + ((-1) * (y1))) + ((-1) * ((100) * (d2)))) + ((-1) * ((100) * (e2)))) + (((((100) * (d2)) + ((100) * (e2))) * (cos((1/100) * (t)))) + ((sin((1/100) * (t))) * (((100) * (d1)) + ((-1) * ((100) * (e1))))))) ^ (2)) + ((((((x2) + ((-1) * (y2))) + ((100) * (d1))) + ((100) * (e1))) + (((((-100) * (d1)) + ((-100) * (e1))) * (cos((1/100) * (t)))) + ((sin((1/100) * (t))) * (((100) * (d1)) + ((-1) * ((100) * (e2))))))) ^ (2)))%R.

Goal
forall d1 d2 e1 e2 t x1 x2 y1 y2,
bounded d1 d2 e1 e2 t x1 x2 y1 y2 ->
(e2 >= 3/20)%R.

Goal
forall d1 d2 e1 e2 t x1 x2 y1 y2,
bounded d1 d2 e1 e2 t x1 x2 y1 y2 ->
(1/10 >= e2)%R.

Goal
forall d1 d2 e1 e2 t x1 x2 y1 y2,
bounded d1 d2 e1 e2 t x1 x2 y1 y2 ->
(e1 >= 3/20)%R.

Goal
forall d1 d2 e1 e2 t x1 x2 y1 y2,
bounded d1 d2 e1 e2 t x1 x2 y1 y2 ->
(1/10 >= e1)%R.

Goal
forall d1 d2 e1 e2 t x1 x2 y1 y2,
bounded d1 d2 e1 e2 t x1 x2 y1 y2 ->
(d2 >= 3/20)%R.

Goal
forall d1 d2 e1 e2 t x1 x2 y1 y2,
bounded d1 d2 e1 e2 t x1 x2 y1 y2 ->
(1/10 >= d2)%R.

Goal
forall d1 d2 e1 e2 t x1 x2 y1 y2,
bounded d1 d2 e1 e2 t x1 x2 y1 y2 ->
(d1 >= 3/20)%R.

Goal
forall d1 d2 e1 e2 t x1 x2 y1 y2,
bounded d1 d2 e1 e2 t x1 x2 y1 y2 ->
(1/10 >= d1)%R.

Goal
forall d1 d2 e1 e2 t x1 x2 y1 y2,
bounded d1 d2 e1 e2 t x1 x2 y1 y2 ->
(10 >= y2)%R.

Goal
forall d1 d2 e1 e2 t x1 x2 y1 y2,
bounded d1 d2 e1 e2 t x1 x2 y1 y2 ->
(10 >= y1)%R.

Goal
forall d1 d2 e1 e2 t x1 x2 y1 y2,
bounded d1 d2 e1 e2 t x1 x2 y1 y2 ->
(x2 >= -1)%R.

Goal
forall d1 d2 e1 e2 t x1 x2 y1 y2,
bounded d1 d2 e1 e2 t x1 x2 y1 y2 ->
(x1 >= -9)%R.

Goal
forall d1 d2 e1 e2 t x1 x2 y1 y2,
bounded d1 d2 e1 e2 t x1 x2 y1 y2 ->
(t >= 10)%R.

Goal
forall d1 d2 e1 e2 t x1 x2 y1 y2,
bounded d1 d2 e1 e2 t x1 x2 y1 y2 ->
(0 >= t)%R.
