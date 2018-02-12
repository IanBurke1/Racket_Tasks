# Task 2

Write, from scratch, a function in Racket that takes a positive integer n0 as input and returns a list by recursively applying the following operation, starting with the input number.

![](https://user-images.githubusercontent.com/22341150/36096795-cced4a8a-0fef-11e8-910e-fe88d96cb85a.PNG)

 ni+1 =(3ni +1 if ni is odd ni ÷2 otherwise Endtherecursionwhen(orif)thenumberbecomes1. Callthefunctioncollatz-list. So, collatz-list should return a list whose ﬁrst element is n0, the second element is n1, and so on. For example: > (collatz-list 5) '(5 16 8 4 2 1) > (collatz-list 9) '(9 28 14 7 22 11 34 17 52 26 13 40 20 10 5 16 8 4 2 1) > (collatz-list 2) '(2 1)