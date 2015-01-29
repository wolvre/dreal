(set-logic QF_NRA_ODE)
(declare-fun x_0_1_t () Real)
(declare-fun x_0_1_0 () Real)
(declare-fun x_0_2_t () Real)
(declare-fun x_0_2_0 () Real)
(declare-fun x_1_1_t () Real)
(declare-fun x_1_1_0 () Real)
(declare-fun x_1_2_t () Real)
(declare-fun x_1_2_0 () Real)
(declare-fun x_2_1_t () Real)
(declare-fun x_2_1_0 () Real)
(declare-fun x_2_2_t () Real)
(declare-fun x_2_2_0 () Real)
(declare-fun x_3_1_t () Real)
(declare-fun x_3_1_0 () Real)
(declare-fun x_3_2_t () Real)
(declare-fun x_3_2_0 () Real)
(declare-fun v_0_1_t () Real)
(declare-fun v_0_1_0 () Real)
(declare-fun v_0_2_t () Real)
(declare-fun v_0_2_0 () Real)
(declare-fun v_1_1_t () Real)
(declare-fun v_1_1_0 () Real)
(declare-fun v_1_2_t () Real)
(declare-fun v_1_2_0 () Real)
(declare-fun v_2_1_t () Real)
(declare-fun v_2_1_0 () Real)
(declare-fun v_2_2_t () Real)
(declare-fun v_2_2_0 () Real)
(declare-fun v_3_1_t () Real)
(declare-fun v_3_1_0 () Real)
(declare-fun v_3_2_t () Real)
(declare-fun v_3_2_0 () Real)
(declare-fun time_1 () Real)
(declare-fun time_4 () Real)
(declare-fun time_3 () Real)
(declare-fun time_6 () Real)
(declare-fun time_5 () Real)
(declare-fun time_8 () Real)
(declare-fun time_7 () Real)
(define-ode 1 (= d/dt[x_0_1] v_0_1))
(define-ode 1 (= d/dt[v_0_1] -9.8))
(define-ode 4 (= d/dt[x_1_2] v_1_2))
(define-ode 4 (= d/dt[v_1_2] (0.0 - -9.8)))
(define-ode 3 (= d/dt[x_1_1] v_1_1))
(define-ode 3 (= d/dt[v_1_1] -9.8))
(define-ode 6 (= d/dt[x_2_2] v_2_2))
(define-ode 6 (= d/dt[v_2_2] (0.0 - -9.8)))
(define-ode 5 (= d/dt[x_2_1] v_2_1))
(define-ode 5 (= d/dt[v_2_1] -9.8))
(define-ode 8 (= d/dt[x_3_2] v_3_2))
(define-ode 8 (= d/dt[v_3_2] (0.0 - -9.8)))
(define-ode 7 (= d/dt[x_3_1] v_3_1))
(define-ode 7 (= d/dt[v_3_1] -9.8))
(assert (<= 0.0 x_0_1_t))
(assert (<= x_0_1_t 20.0))
(assert (<= 0.0 x_0_1_0))
(assert (<= x_0_1_0 20.0))
(assert (<= 0.0 x_0_2_t))
(assert (<= x_0_2_t 20.0))
(assert (<= 0.0 x_0_2_0))
(assert (<= x_0_2_0 20.0))
(assert (<= 0.0 x_1_1_t))
(assert (<= x_1_1_t 20.0))
(assert (<= 0.0 x_1_1_0))
(assert (<= x_1_1_0 20.0))
(assert (<= 0.0 x_1_2_t))
(assert (<= x_1_2_t 20.0))
(assert (<= 0.0 x_1_2_0))
(assert (<= x_1_2_0 20.0))
(assert (<= 0.0 x_2_1_t))
(assert (<= x_2_1_t 20.0))
(assert (<= 0.0 x_2_1_0))
(assert (<= x_2_1_0 20.0))
(assert (<= 0.0 x_2_2_t))
(assert (<= x_2_2_t 20.0))
(assert (<= 0.0 x_2_2_0))
(assert (<= x_2_2_0 20.0))
(assert (<= 0.0 x_3_1_t))
(assert (<= x_3_1_t 20.0))
(assert (<= 0.0 x_3_1_0))
(assert (<= x_3_1_0 20.0))
(assert (<= 0.0 x_3_2_t))
(assert (<= x_3_2_t 20.0))
(assert (<= 0.0 x_3_2_0))
(assert (<= x_3_2_0 20.0))
(assert (<= -100.0 v_0_1_t))
(assert (<= v_0_1_t 100.0))
(assert (<= -100.0 v_0_1_0))
(assert (<= v_0_1_0 100.0))
(assert (<= -100.0 v_0_2_t))
(assert (<= v_0_2_t 100.0))
(assert (<= -100.0 v_0_2_0))
(assert (<= v_0_2_0 100.0))
(assert (<= -100.0 v_1_1_t))
(assert (<= v_1_1_t 100.0))
(assert (<= -100.0 v_1_1_0))
(assert (<= v_1_1_0 100.0))
(assert (<= -100.0 v_1_2_t))
(assert (<= v_1_2_t 100.0))
(assert (<= -100.0 v_1_2_0))
(assert (<= v_1_2_0 100.0))
(assert (<= -100.0 v_2_1_t))
(assert (<= v_2_1_t 100.0))
(assert (<= -100.0 v_2_1_0))
(assert (<= v_2_1_0 100.0))
(assert (<= -100.0 v_2_2_t))
(assert (<= v_2_2_t 100.0))
(assert (<= -100.0 v_2_2_0))
(assert (<= v_2_2_0 100.0))
(assert (<= -100.0 v_3_1_t))
(assert (<= v_3_1_t 100.0))
(assert (<= -100.0 v_3_1_0))
(assert (<= v_3_1_0 100.0))
(assert (<= -100.0 v_3_2_t))
(assert (<= v_3_2_t 100.0))
(assert (<= -100.0 v_3_2_0))
(assert (<= v_3_2_0 100.0))
(assert (<= 0.0 time_1))
(assert (<= time_1 10.0))
(assert (<= 0.0 time_4))
(assert (<= time_4 10.0))
(assert (<= 0.0 time_3))
(assert (<= time_3 10.0))
(assert (<= 0.0 time_6))
(assert (<= time_6 10.0))
(assert (<= 0.0 time_5))
(assert (<= time_5 10.0))
(assert (<= 0.0 time_8))
(assert (<= time_8 10.0))
(assert (<= 0.0 time_7))
(assert (<= time_7 10.0))
(assert (and (or (and (>= x_3_1_t 0.0) (= v_2_2_t 0.0) (= v_3_1_0 v_2_2_t) (= x_3_1_0 x_2_2_t)) (and (>= x_3_2_t 0.0) (= x_2_1_t 0.0) (= v_3_2_0 (- 0.0 v_2_1_t)) (= x_3_2_0 x_2_1_t))) (or (and (>= x_2_1_t 0.0) (= v_1_2_t 0.0) (= v_2_1_0 v_1_2_t) (= x_2_1_0 x_1_2_t)) (and (>= x_2_2_t 0.0) (= x_1_1_t 0.0) (= v_2_2_0 (- 0.0 v_1_1_t)) (= x_2_2_0 x_1_1_t))) (or (and (>= x_1_1_t 0.0) (= v_0_2_t 0.0) (= v_1_1_0 v_0_2_t) (= x_1_1_0 x_0_2_t)) (and (>= x_1_2_t 0.0) (= x_0_1_t 0.0) (= v_1_2_0 (- 0.0 v_0_1_t)) (= x_1_2_0 x_0_1_t))) (>= x_0_1_t 0.0) (= v_0_1_0 0.0) (= x_0_1_0 10.0) (>= v_3_2_t -100.0) (= x_3_2_t 9.0)))
(check-sat)
(exit)
