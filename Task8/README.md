# Task 8
Write a function chse in Racket that takes three lists x, y and z of equal length and containing only 0’s and 1’s. It should return a list containing the elements of y in the positions where x is 1 and the elements of z otherwise. For example:
```Racket
> (chse (list 0 0 0 0 1 1 1 1) (list 0 0 1 1 0 0 1 1) (list 0 1 0 1 0 1 0 1)) 
'(0 1 0 1 0 0 1 1)
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
Create our chse function, check that the 3 lists are not null and they are equal in length.
```Racket
(define (chse x y z)
  (if (null? x)(null? y)(null? z))
  '()
  (if (not (= (length x)(length y)(length z)))
      '()
      #t))
```

### Step 2
```Racket

```

## References


