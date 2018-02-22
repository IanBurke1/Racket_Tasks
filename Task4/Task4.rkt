#lang racket

(define (sublsum? l)
  (combinations l))

(sublsum? (list 1 2 3 4 -5))