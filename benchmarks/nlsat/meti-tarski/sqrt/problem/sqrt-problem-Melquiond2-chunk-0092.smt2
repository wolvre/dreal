(set-logic QF_NRA)

(declare-fun skoSXY () Real)
(declare-fun skoX () Real)
(declare-fun skoY () Real)
(assert (and (not (<= (* skoX (+ (* skoSXY (* skoSXY (* skoSXY (* skoSXY (* skoSXY 2019.))))) (* skoX (+ (* skoSXY (* skoSXY (* skoSXY (* skoSXY 115.)))) (* skoX (* skoSXY (* skoSXY skoSXY))))))) (* skoSXY (* skoSXY (* skoSXY (* skoSXY (* skoSXY (* skoSXY (- 6001.))))))))) (and (not (<= (* skoX (+ (* skoSXY (* skoSXY (* skoSXY (* skoSXY (* skoSXY (+ (/ 1932763411. 819200.) (* skoSXY (/ (- 108018.) 125.)))))))) (* skoX (+ (* skoSXY (* skoSXY (* skoSXY (* skoSXY (+ (/ 76388487. 163840.) (* skoSXY (/ (- 36342.) 125.))))))) (* skoX (+ (* skoSXY (* skoSXY (* skoSXY (+ (/ 10602769. 819200.) (* skoSXY (/ (- 414.) 25.)))))) (* skoX (* skoSXY (* skoSXY (+ (/ 1. 32.) (* skoSXY (/ (- 18.) 125.)))))))))))) (* skoSXY (* skoSXY (* skoSXY (* skoSXY (* skoSXY (* skoSXY (/ 727573631. 819200.))))))))) (and (not (<= skoY 1.)) (and (not (<= skoX (/ 3. 2.))) (and (not (<= skoSXY 0.)) (and (not (<= 2. skoX)) (not (<= (/ 33. 32.) skoY)))))))))
(set-info :status sat)
(check-sat)