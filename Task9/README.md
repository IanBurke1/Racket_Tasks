# Task 9
Write a function sod2 in Racket that takes three lists x, y and z of equal length and containing only 0’s and 1’s. It should return a list containing a 1 where the number of 1’s in a given position in x, y and z contains an odd number of 1’s, and 0 otherwise. 
For example:
```Racket
> (sod2 (list 0 0 0 0 1 1 1 1) (list 0 0 1 1 0 0 1 1) (list 0 1 0 1 0 1 0 1)) 
'(0 1 1 0 1 0 0 1)
```

### Map
Applies procedure to the elements of the list(s) from the first elements to the last. The procedure arguement must accept the same number of arguments as the number of supplied lists, and all lists must have the same number of elements. The result is a list containing each result of procedure in order.

Example:
```Racket 
> (map (lambda (number)
         (+ 1 number))
       '(1 2 3 4))

'(2 3 4 5)
```

### Lambda expressions
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
Create our sod2 function and check that the lists are not null and equal in length.
```Racket
(define (sod2 x y z )
  (if (null? x)(null? y)(null? z)) ; if lists x y z are null then..
      '() ; return null, otherwise..
      (if (not (= (length x)(length y)(length z))) ; if lists x y z are not equal in length then..
          '()
          #t)) ; return true
```

### Step 2
In order to check if the number of 1's in given position in the 3 lists are odd, we need to use the map function to map through the lists and lambda expression to apply our procedure.
```Racket
(define (sod2 x y z )
  (if (null? x)(null? y)(null? z)) ; if lists x y z are null then..
      '() ; return null, otherwise..
      (if (not (= (length x)(length y)(length z))) ; if lists x y z are not equal in length then..
          '() ; return null, otherwise..
          ; Map through the 3 lists and apply the following procedure using lambda expression..
          ;  add the corresponding elements in x y z and if sum is odd then..
          ;   return a new list containing a 1 otherwise if sum is even then put in a zero in that position
          (map (lambda (x y z)
                 (if (odd? (+ x y z) ) 1 0)) x y z)))
                 
; For example:
;  1st element in list x = (1 ....) list y = (1 ...) list z = (1 ...) => 1 + 1 + 1 = 3 which is a odd number...
;   Therefore, add a 1 in a new list => (1)
;  2nd element in list z (1 0 ...) list y = (1 0 ...) list z = (1 0 ...) => 0 + 0 + 0 = 0 which is a even number...
;   Therefore, add a 0 in the new list => (1 0) ..and so on with the rest of the elements in x y z until the end of the lists.
```

### Step 3 
Put if all together.
```Racket
; sod2 function used to return a new list containing a 1 where the number..
;  of corresponding 1's in the lists x y z is odd no. of 1's otherwise 0.
(define (sod2 x y z )
  (if (null? x)(null? y)(null? z)) ; if lists x y z are null then..
      '() ; return null, otherwise..
      (if (not (= (length x)(length y)(length z))) ; if lists x y z are not equal in length then..
          '() ; return null, otherwise..
          ; Map through the 3 lists and apply the following procedure using lambda expression..
          ;  add the corresponding elements in x y z and if sum is odd then..
          ;   return a new list containing a 1 otherwise if sum is even then put in a zero in that position
          (map (lambda (x y z)
                 (if (odd? (+ x y z) ) 1 0)) x y z)))

; Passing in 3 lists containing only 1's and 0's
(sod2 (list 0 0 0 0 1 1 1 1) (list 0 0 1 1 0 0 1 1) (list 0 1 0 1 0 1 0 1)) ; Expected result: '(0 1 1 0 1 0 0 1)
(sod2 (list 1 0 0 0 1 0 0 1) (list 1 0 1 1 1 0 1 1) (list 1 0 0 1 1 1 0 1)) ; Expected result: '(1 0 1 0 1 1 1 1)

```

## References
- https://docs.racket-lang.org/reference/pairs.html#%28def._%28%28lib._racket%2Fprivate%2Fmap..rkt%29._map%29%29
- https://stackoverflow.com/questions/25696063/lambda-in-racket-explained
- https://stackoverflow.com/questions/2943072/whats-the-point-of-lambda-in-scheme