# Task 6
Write a function hamming-distance in Racket that takes two lists and returns the number of positions in which they diﬀer. For example: 
```Racket
> (hamming-distance (list 1 0 1 0 1 1 1 0) (list 1 1 1 1 0 0 0 0)) 
5
```

## Hamming distance
The Hamming Distance is a number used to denote the difference between two binary strings. Basically, how many times the bits between two numbers don't match.  It is a small portion of a broader set of formulas used in information analysis. Specifically, Hamming's formulas allow computers to detect and correct error on their own. In other words, it measures the minimum number of substitutions required to change one string into the other, or the minimum number of errors that could have transformed one string into the other. The Hamming distance is a major application is in coding theory, more specifically to block codes, in which the equal-length strings are vectors over a finite field.

### Step 1
Create hamming-distance function and check if the length of both lists are equal in order to calculate the hamming distance.
```Racket
#lang racket

(define (hamming-distance l li)
  (if (= (length l)(length li))
      #t
      #f))

(hamming-distance (list 1 0 1 0 1 1 1 0)(list 1 1 1 1 0 0 0 0))
```

### Step 2

### Step 3

### References
- https://en.wikipedia.org/wiki/Hamming_distance
- https://classroom.synonym.com/calculate-hamming-distance-2656.html