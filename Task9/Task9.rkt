#lang racket

(define (sod2 x y z )
  (if (null? x)(null? y)(null? z))
      '()
      (if (not (= (length x)(length y)(length z)))
          '()
          (map (lambda (x y z)
                 (if (odd? (+ x y z) ) 1 0)) x y z)))

(sod2 (list 0 0 0 0 1 1 1 1) (list 0 0 1 1 0 0 1 1) (list 0 1 0 1 0 1 0 1)) ; Expected result: '(0 1 1 0 1 0 0 1)
