(set-logic QF_NRA)

(declare-fun skoX () Real)
(declare-fun skoSQ3 () Real)
(declare-fun pi () Real)
(assert (and (<= (* skoSQ3 (* skoSQ3 (/ 1. 3.))) 0.) (and (<= (* skoX (* skoX (+ (+ (/ 1. 2.) (* skoSQ3 (* skoSQ3 (/ (- 1.) 6.)))) (* skoX (* skoX (+ (* skoSQ3 (* skoSQ3 (/ 1. 72.))) (* skoX (* skoX (+ (* skoSQ3 (* skoSQ3 (/ (- 1.) 2160.))) (* skoX (* skoX (+ (* skoSQ3 (* skoSQ3 (/ 1. 120960.))) (* skoX (* skoX (+ (* skoSQ3 (* skoSQ3 (/ (- 1.) 10886400.))) (* skoX (* skoX (+ (* skoSQ3 (* skoSQ3 (/ 1. 1437004800.))) (* skoX (* skoX (+ (* skoSQ3 (* skoSQ3 (/ (- 1.) 261534873600.))) (* skoX (* skoX (* skoSQ3 (* skoSQ3 (/ 1. 62768369664000.)))))))))))))))))))))))))) (+ 3. (* skoSQ3 (* skoSQ3 (- 1.))))) (and (not (<= skoSQ3 0.)) (and (not (<= skoX 0.)) (and (not (<= (/ 31415927. 10000000.) pi)) (and (not (<= pi (/ 15707963. 5000000.))) (and (not (<= (+ (/ (- 1.) 10000000.) (* pi (/ 1. 2.))) skoX)) (= (* skoSQ3 skoSQ3) 3.)))))))))
(set-info :status unsat)
(check-sat)