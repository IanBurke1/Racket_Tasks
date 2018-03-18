# Task 6
Write a function hamming-distance in Racket that takes two lists and returns the number of positions in which they diﬀer. For example: 
```Racket
> (hamming-distance (list 1 0 1 0 1 1 1 0) (list 1 1 1 1 0 0 0 0)) 
5
```

## Hamming distance
The Hamming Distance is a number used to denote the difference between two binary strings. Basically, how many times the bits between two numbers don't match.  It is a small portion of a broader set of formulas used in information analysis. Specifically, Hamming's formulas allow computers to detect and correct error on their own. In other words, it measures the minimum number of substitutions required to change one string into the other, or the minimum number of errors that could have transformed one string into the other. The Hamming distance is a major application is in coding theory, more specifically to block codes, in which the equal-length strings are vectors over a finite field.

### Step 1
Create a hamming-distance function and check that both lists passed in are not null.
```Racket
; hamming-distance function used to calculate the hamming distance between 2 lists
(define (hamming-distance l li)
  (if (null? l) ; if list1 = null then..
      0 ; output 0
      (if (null? li) ; if list2 = null then..
          0 ; output 0, otherwise..
          #t)))

; Passing in our 2 lists
(hamming-distance (list 1 0 1 0 1 1 1 0)(list 1 1 1 1 0 0 0 0)) ; Expected result: #t

```

### Step 2
Next we need to recursively compare each element in both lists to see if they are equal or not. If both elements are equal then the recursion continues and if both elements are not equal then count 1.
```Racket
#lang racket

; hamming-distance function used to calculate the hamming distance between 2 lists
(define (hamming-distance l li)
  (if (null? l) ; if list1 = null then..
      0 ; output 0
      (if (null? li) ; if list2 = null then..
          0 ; output 0, otherwise..
          (if (= (car l)(car li)) ; if the 1st element of list1 and list2 are equal then..
              (hamming-distance (cdr l) (cdr li)) ; take the 2nd elements of the pair from both lists recursively
              (+ 1 (hamming-distance (cdr l) (cdr li))))))) ; otherwise if not equal then add 1 until the end of the lists.

; Passing in our 2 lists
(hamming-distance (list 1 0 1 0 1 1 1 0)(list 1 1 1 1 0 0 0 0)) ; Expected result: 5
(hamming-distance (list 1 1 1 0 0 0 1 0)(list 0 0 0 1 1 1 0 0)) ; Expected result: 7
```

### References
- https://en.wikipedia.org/wiki/Hamming_distance
- https://classroom.synonym.com/calculate-hamming-distance-2656.html