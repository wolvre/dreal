(set-logic QF_NRA)
(declare-fun skoX () Real)
(declare-fun skoY () Real)
(declare-fun skoZ () Real)
(assert (and (not (<= (* (- 1) skoY) 0)) (and (not (<= (+ (* 1413 skoX) (* 1413 skoY) (* 1413 skoZ) (* (- 1200) (* skoX skoX)) (* (- 900) (* skoX skoY)) (* (- 1200) (* skoY skoY)) (* (- 900) (* skoX skoZ)) (* (- 900) (* skoY skoZ)) (* 471 (* skoX skoX skoX)) (* 471 (* skoX skoX skoY)) (* 471 (* skoX skoY skoY)) (* 471 (* skoX skoX skoZ)) (* (- 1413) (* skoX skoY skoZ)) (* 471 (* skoY skoY skoZ)) (* 471 (* skoY skoY skoY)) (* (- 700) (* skoX skoX skoY skoY)) (* 600 (* skoX skoX skoY skoZ)) (* 600 (* skoX skoY skoY skoZ)) (* 157 (* skoX skoX skoX skoY skoY)) (* 157 (* skoX skoX skoY skoY skoY)) (* (- 471) (* skoX skoX skoX skoY skoZ)) (* 157 (* skoX skoX skoY skoY skoZ)) (* (- 471) (* skoX skoY skoY skoY skoZ)) (* 100 (* skoX skoX skoX skoY skoY skoY)) (* 300 (* skoX skoX skoX skoY skoY skoZ)) (* 300 (* skoX skoX skoY skoY skoY skoZ)) (* (- 157) (* skoX skoX skoX skoY skoY skoY skoZ))) 900)) (and (or (not (<= (* (- 1) skoY) 0)) (or (<= (+ (* (- 1) skoX) (* (- 1) skoY) (* (- 1) skoZ) (* skoX skoY skoZ)) 0) (<= (+ (* 3 skoZ) (* skoX skoX skoX) (* 3 (* skoX skoX skoY)) (* 3 (* skoX skoY skoY)) (* skoX skoX skoZ) (* (- 3) (* skoX skoY skoZ)) (* skoX skoX skoX skoY skoY) (* (- 1) (* skoX skoX skoX skoY skoZ))) 0))) (and (not (<= skoZ 0)) (and (not (<= skoX (- 1))) (and (not (<= (* (- 1) skoY) (- 1))) (not (<= (+ (* (- 1) skoX) skoY) 0)))))))))
(set-info :status sat)
(check-sat)