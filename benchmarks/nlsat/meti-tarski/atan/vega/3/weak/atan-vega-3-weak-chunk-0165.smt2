(set-logic QF_NRA)

(declare-fun skoX () Real)
(declare-fun skoY () Real)
(declare-fun skoZ () Real)
(assert (and (<= 0. skoY) (and (<= (* skoZ (+ 1. (* skoY (* skoX (- 1.))))) (+ (* skoX (- 1.)) (* skoY (- 1.)))) (and (<= (* skoZ (+ (+ (/ (- 273.) 50.) (* skoX (+ 3. (* skoX (/ (- 91.) 50.))))) (* skoY (+ (+ 3. (* skoX (+ (/ 273. 50.) (* skoX (+ (- 2.) (* skoX (/ 91. 50.))))))) (* skoY (* skoX (+ (- 3.) (* skoX (* skoX (- 1.)))))))))) (+ (+ (- 3.) (* skoX (+ (/ 273. 50.) (* skoX (+ (- 4.) (* skoX (/ 91. 50.))))))) (* skoY (+ (+ (/ 273. 50.) (* skoX (+ (- 3.) (* skoX (/ 91. 50.))))) (* skoY (+ (- 3.) (* skoX (* skoX (- 1.))))))))) (and (not (<= 0. skoX)) (and (or (not (<= 0. skoY)) (<= (* skoZ (+ (- 1.) (* skoY skoX))) (+ skoX skoY))) (and (not (<= skoZ 0.)) (and (not (<= skoX (- 1.))) (and (not (<= 1. skoY)) (not (<= skoY skoX)))))))))))
(set-info :status unsat)
(check-sat)