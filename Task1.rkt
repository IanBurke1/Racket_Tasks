#lang racket

(define (decide-prime? n)
  (define (not-divisible-by x y)
    (cond
      ((= y 1) #t)
          (else (if(= (remainder x y) 0)
                   #f
                   (not-divisible-by x (- y 1))))))
  (if (= n 1)
      #t
      (not-divisible-by n (- n 1))))


(decide-prime 1)