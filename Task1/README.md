# Task 1
Write, from scratch, a function in Racket that uses a brute-force algorithm that takes a single positive integer and return true if the number is a prime and false otherwise. Call the function decide-prime.

## What is a Prime Number?
A prime number is a number that is divisible only by itself and 1. For example, 5 is prime because the only ways of writing it as a product, 1 × 5 or 5 × 1, involve 5 itself. However, 6 is composite because it is the product of two numbers (2 × 3) that are both smaller than 6.

## What is a brute-force algorithm
In computer science, brute-force search or exhaustive search, also known as generate and test, is a very general problem-solving technique that consists of systematically enumerating all possible candidates for the solution and checking whether each candidate satisfies the problem's statement.

## DrRacket
### Step 1
Create a function that takes in a single positive integer:
```Racket
(define (decide-prime? number))

; The '?' after decide-prime checks if the number is null or not.

```

### Step 2
Evaluate the integer. Check if the integer is equal to 1 or not:
```Racket
(define (decide-prime? number)
    (if (= number 1)
      #f ;false
        #t ;true
    ))

(decide-prime? 3) ; test our function
```
### Step 3
If the integer is not equal to 1 then evaluate if the int is prime by using brute-force
```Racket
(define (decide-prime? n) 
  (if (= n 1) ; if the integer is equal to 1 then..
      #f ;return false, otherwise...
      ; iterate through a sequence starting at 2 and ending at the interger passed in..
      ; 'not' returns #t if n is #f, otherwise #f if #t... i.e. remainder IS equal to 0 
      ; in other words, if none of the numbers ranged from 2 to the integer are divided with remainder not equal to 0 then #t..it is a prime
      (not (for/or [(i (in-range 2 n))] 
              (= 0 (modulo n i)))))) ; divide n by i and check if the remainder of n and i is equal to 0
```

### Step 4
Format the output
```Racket
(define (decide-prime? number)
  (if (= number 1)
      #f
      (not (for/or [(d (in-range 2 number))]=(= 0 (remainder number d))))))

; input function used to format the output
(define (input num)
  (display num)(display " = ")(display (decide-prime? num))
  (display "\n"))
```

### Step 5
Test it all
```Racket
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
```

## Refernces
- https://docs.racket-lang.org/reference/for.html#%28form._%28%28lib._racket%2Fprivate%2Fbase..rkt%29._for%2For%29%29
- https://docs.racket-lang.org/reference/sequences.html#%28def._%28%28lib._racket%2Fprivate%2Fbase..rkt%29._in-range%29%29
- https://docs.racket-lang.org/reference/generic-numbers.html#%28def._%28%28quote._~23~25kernel%29._modulo%29%29