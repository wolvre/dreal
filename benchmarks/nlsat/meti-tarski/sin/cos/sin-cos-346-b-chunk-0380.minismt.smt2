(set-logic QF_NRA)
(declare-fun skoSQ3 () Real)
(declare-fun skoX () Real)
(declare-fun pi () Real)
(assert (and (<= (* (- 1) (* skoSQ3 skoSQ3 skoSQ3 skoSQ3 skoSQ3 skoSQ3)) 0) (and (<= (* skoSQ3 skoSQ3 skoSQ3 skoSQ3 skoSQ3 skoSQ3) 0) (and (not (<= (+ (* (- 2160) (* skoSQ3 skoSQ3 skoSQ3 skoSQ3)) (* 480 (* skoSQ3 skoSQ3 skoSQ3 skoSQ3 skoSQ3 skoSQ3)) (* 360 (* skoSQ3 skoSQ3 skoSQ3 skoSQ3 skoX skoX)) (* (- 30) (* skoSQ3 skoSQ3 skoX skoX skoX skoX)) (* skoX skoX skoX skoX skoX skoX)) 0)) (and (= (* skoSQ3 skoSQ3) 3) (and (not (<= (+ (* (- 10000000) skoX) (* 5000000 pi)) 1)) (and (not (<= (* 5000000 pi) 15707963)) (and (not (<= (* (- 10000000) pi) (- 31415927))) (and (not (<= skoX 0)) (not (<= skoSQ3 0)))))))))))
(set-info :status unsat)
(check-sat)