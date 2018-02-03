#lang racket
; decide-prime function to determine if a number is a prime number using brute-force.
; decide-prime? means is 'n' equal to zero/null
(define (decide-prime? number)
  (if (= number 1)
      #f
      (not (for/or [(d (in-range 2 number))]=(= 0 (remainder number d))))))

(for [(num (in-range 2 11))] ; iterate from 2 to 11
  (display "\n")(display num)(display " = ")

  (display (decide-prime? num)))

