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
(define (decide-prime? number)
  (if (= number 1)
      #f
      (not (for/or [(d (in-range 2 number))]=(= 0 (remainder number d))))))
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