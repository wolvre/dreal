(set-logic QF_NRA)
(declare-fun x1 () Real)
(declare-fun x2 () Real)
(declare-fun x3 () Real)
(declare-fun x4 () Real)
(declare-fun x5 () Real)
(declare-fun x6 () Real)
(assert (<= 4.0 x1))
(assert (<= x1 6.3504))
(assert (<= 4.0 x2))
(assert (<= x2 6.3504))
(assert (<= 4.0 x3))
(assert (<= x3 6.3504))
(assert (<= 8.0 x4))
(assert (<= x4 9.0))
(assert (<= 4.0 x5))
(assert (<= x5 6.3504))
(assert (<= 4.0 x6))
(assert (<= x6 6.3504))
(assert (not (< (+ (* (+ (/ 3.14159265 2.0) (arctan2 (^ (* 4.0 (* x2 (+ (* x2 (* x5 (+ (- x2) (+ x1 (+ (- x3 x5) (+ x4 x6)))))) (+ (* x1 (* x4 (+ (- x2 x1) (+ x3 (+ (- x5 x4) x6))))) (- (- (- (- (* x3 (* x6 (+ x2 (+ (- x1 x3) (+ x5 (- x4 x6)))))) (* x1 (* x3 x5))) (* x2 (* x3 x4))) (* x2 (* x1 x6))) (* x5 (* x4 x6))))))) 0.5) (- (+ (- (* (- x1) x3) (* x2 x5)) (+ (* x1 x4) (+ (- (* x3 x6) (* x4 x6)) (* x2 (+ (- x2) (+ x1 (+ (- x3 x5) (+ x4 x6))))))))))) (- 1.0)) (+ (* 1.0 0.955) (+ (* (^ x2 0.5) 0.2356) (+ (* 1.0 (* 0.2356 (- 2.0))) (+ (* (^ x3 0.5) (- 0.32)) (+ (* 1.0 (* 0.32 2.0)) (+ (* (^ x1 0.5) (- 0.792)) (+ (* 1.0 (* 0.792 2.0)) (+ (* (^ x5 0.5) 0.707) (+ (* 1.0 (* 0.707 (- 2.0))) (+ (* (^ x6 0.5) (- 0.0844)) (+ (* 1.0 (* 0.0844 2.0)) (+ (* (^ x4 0.5) (- 0.821)) (* 1.0 (* (^ 8.0 0.5) 0.821))))))))))))))) 0.0)))
(check-sat)
(exit)
