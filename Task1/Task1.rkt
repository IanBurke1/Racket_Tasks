#lang racket
; decide-prime function to determine if a number is a prime number using brute-force.
; decide-prime? means is 'n' equal to zero/null
(define (decide-prime? n) 
  (if (= n 1) ; if the integer is equal to 1 then..
      #f ;return false, otherwise...
      ; iterate through a sequence starting at 2 and ending at the interger passed in..
      ; 'not' returns #t if n is #f, otherwise #f if #t... i.e. remainder IS equal to 0 
      ; in other words, if none of the numbers ranged from 2 to the integer are divided with remainder not equal to 0 then #t..it is a prime
      (not (for/or [(i (in-range 2 n))] 
             (= 0 (modulo n i)))))) ; divide n by i and check if the remainder of n and i is equal to 0

; input function used to format the output
(define (input num)
  (display num)(display " = ")(display (decide-prime? num))
  (display "\n"))

; Testing
;(decide-prime? 3)
;(decide-prime? 5)
;(decide-prime? 37)
;(decide-prime? 142)
;(decide-prime? 1000)

; Input number
(input 9)
(input 3)
(input 4)
(input 5)
(input 10)
(input 13)
(input 20)
(input 23)



