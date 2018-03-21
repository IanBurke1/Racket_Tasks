# Task 7
Write a function maj in Racket that takes three lists x, y and z of equal length and containing only 0’s and 1’s. It should return a list containing a 1 where two or more of x, y and z contain 1’s, and 0 otherwise. For example: 
```Racket
> (maj (list 0 0 0 0 1 1 1 1) (list 0 0 1 1 0 0 1 1) (list 0 1 0 1 0 1 0 1)) 
'(0 0 0 1 0 1 1 1)
```

#### Map
Applies procedure to the elements of the list(s) from the first elements to the last. The procedure arguement must accept the same number of arguments as the number of supplied lists, and all lists must have the same number of elements. The result is a list containing each result of procedure in order.

Example:
```Racket 
> (map (lambda (number)
         (+ 1 number))
       '(1 2 3 4))

'(2 3 4 5)
```

#### Lambda expressions
A lambda expression creates a function. In the simplest case, a lambda expression has the form. Basically, instead of creating a total seperate function to use in another function, you can just use lambda as a shortcut to create a function to use it as an argument to another function (like for example map), without defining the function.

For Example:

If you want to add 10 to every number in a list you can do:
```Racket
(define (addten l) (+ l 42))
(map addten (list 1 2 3 4))
```
Instead of naming and defining the function that you only use once, you can use lambda as a shortcut:
```Racket
(map (lambda (l) (+ l 42)) (list 1 2 3 4))
> 
```

Here a very good examples and explainations of Lambda expressions:

https://stackoverflow.com/questions/25696063/lambda-in-racket-explained

https://stackoverflow.com/questions/2943072/whats-the-point-of-lambda-in-scheme


### Step 1
Create our maj function and check that the 3 lists passed in are not null and have equal length.
```Racket
(define (maj x y z)
  (if (null? x)(null? y)(null? z)) ;if the 3 lists are null then..
      '() ; output null, otherwise..
  ; if the length of the 3 lists are NOT equal then..
      (if (not(= (length x)(length y)(length z)))
          '() ; output null, otherwise...
          #t)) ; return True
```

### Step 2
So one of the ways to find the majority is to go through the 3 lists and add each corresponding element in order i.e. sum all the 1st elements of the 3 lists and if the sum is bigger than 1 then the majority of elements is 1's otherwise 0's. For example, (1 ....) (1 ...) (0 ...) => 1 + 1 + 0 = 2 ..then majority of 1st elements is 1

```Racket
(define (maj x y z)
  (if (null? x)(null? y)(null? z)) ;if the 3 lists are null then..
      '() ; output null, otherwise..
  ; if the length of the 3 lists are NOT equal then..
      (if (not(= (length x)(length y)(length z)))
          '() ; output null, otherwise...
          ; Iterate through the 3 lists and add the elements by mapping the..
          ; 1st element in each list together, then add the 2nd elements, 3rd elements and so on until end.
          ; if the sum of the elements is greater than 1 then return 1 (majority is 1's) otherwise 0 (majority is 0's)..
          ; in a new list containing the majority of 1's and 0's
          (map (lambda (x y z)
                 (if (> (+ x y z) 1) 1 0)) x y z)))
```

### Step 3
Test our function.
```Racket
#lang racket

; Maj function used to compare the elements of 3 lists and place the majority of elements in a new list
(define (maj x y z)
  (if (null? x)(null? y)(null? z)) ;if the 3 lists are null then..
      '() ; output null, otherwise..
  ; if the length of the 3 lists are NOT equal then..
      (if (not(= (length x)(length y)(length z)))
          '() ; output null, otherwise...
          ; Iterate through the 3 lists and add the elements by mapping the..
          ; 1st element in each list together, then add the 2nd elements, 3rd elements and so on until end.
          ; if the sum of the elements is greater than 1 then return 1 (majority is 1's) otherwise 0 (majority is 0's)..
          ; in a new list containing the majority of 1's and 0's
          (map (lambda (x y z)
                 (if (> (+ x y z) 1) 1 0)) x y z)))

; Passing in 3 lists
(maj (list 0 0 0 0 1 1 1 1)(list 0 0 1 1 0 0 1 1)(list 0 1 0 1 0 1 0 1)) ; Expected result: '(0 0 0 1 0 1 1 1)

(maj (list 0 1 0 1 1 1 1 1)(list 0 0 0 0 0 1 0 0)(list 0 1 1 1 0 0 1 0)) ; Expected result: '(0 1 0 1 0 1 1 0)

```

## References
- https://docs.racket-lang.org/reference/pairs.html#%28def._%28%28lib._racket%2Fprivate%2Fmap..rkt%29._map%29%29
- https://stackoverflow.com/questions/25696063/lambda-in-racket-explained
- https://stackoverflow.com/questions/2943072/whats-the-point-of-lambda-in-scheme