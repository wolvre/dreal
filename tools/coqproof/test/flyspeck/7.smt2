(set-logic QF_NRA)
(declare-fun x1 () Real)
(declare-fun x2 () Real)
(declare-fun x3 () Real)
(declare-fun x4 () Real)
(declare-fun x5 () Real)
(declare-fun x6 () Real)
(assert (<= 7.84 x1))
(assert (<= x1 8.0))
(assert (<= 4.0 x2))
(assert (<= x2 4.0401))
(assert (<= 4.0 x3))
(assert (<= x3 4.0401))
(assert (<= 7.84 x4))
(assert (<= x4 8.0))
(assert (<= 4.0 x5))
(assert (<= x5 4.0401))
(assert (<= 4.0 x6))
(assert (<= x6 4.0401))
(assert (not (< (* (+ (* (^ x1 0.5) (* (^ x2 0.5) (^ x3 0.5))) (+ (* (^ x1 0.5) (/ (+ x2 (- x3 x4)) 2.0)) (+ (* (^ x2 0.5) (/ (+ x1 (- x3 x5)) 2.0)) (* (^ x3 0.5) (/ (+ x1 (- x2 x6)) 2.0))))) (- 1.0)) 0.0)))
(check-sat)
(exit)
