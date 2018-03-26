# Functional Programming
#### *Theory of Algorithms - Lecturer: [Dr Ian McLoughlin](ianmcloughlin.github.io) - 4th Year (Hons) Software Development, GMIT*
This repository contains solutions to a number of tasks (Continuous assessments) for [Theory of Algorithms](https://ianmcloughlin.github.io/theoryofalgorithms) 4th year module. The solutions will be written in the [Racket](https://racket-lang.org/) Language.

**_The tasks sheet can be found at: [RacketTasks.pdf](https://github.com/ianburkeixiv/Racket_Tasks/blob/master/RacketTasks.pdf)_**



## How to run 
1. Download and install [Racket](http://download.racket-lang.org/).
2. Download the [zip](https://github.com/ianburkeixiv/Racket_Tasks/archive/master.zip) of this repository.
3. Unzip/Extract the repo into preferred directory.
4. Open DrRacket to run the above Racket tasks. For example:

![](https://user-images.githubusercontent.com/22341150/37477036-98577ac4-286e-11e8-9591-d4a2a331765e.gif)


## What is Functional Programming?
Functional programming (FP) is a programming paradigm that is based on lambda calculus, a formal system developed by Alonzo Church in the 1930s. Functional programming is a style of building the structure and elements of computer programs, that treats computation as the evaluation of mathematical functions and avoids changing-state and mutable data.

## What is Imperative programming?
Imperative programming is the most dominant paradigm with languages such as Java, C, C++, Python Ruby and many more. It uses statements that change a program's state. It is characteristic of a sequence of steps/instructions that happen in order. Common constructs to manipulate the flow of these instructions include while statements and for loops. Variables are used to keep track of everything computed and which state the program is at which then can control where the program should go to next which continues to modify the state. The sequence of state changes is often called a side effect. The reason it is called a side effect is because it has the potential to modify the state, thus changing the flow of the program.

#### Difference between functional and imperative programming
Functional Programming supports a pure functional approach to problem solving. A pure function is the equivalent of a mathematical function. The same inputs will always map to the same outputs. They also lack any side effects (other than returning a value or values) which means the compiler can do some optimizations which makes it easier to run a function in parallel as there's nothing to contend with. This means that pure functions are composable: that is, self-contained and stateless. These characteristics bring a number of benefits, including the following: Increased readability and maintainability. This is because each function is designed to accomplish a specific task given its arguments. The function does not rely on any external state. 

Instead of for and while loops, recursion is used instead. Most people are exposed to recursion in imperative languages, but functional languages can have special support for recursion.



https://stackoverflow.com/questions/17826380/what-is-difference-between-functional-and-imperative-programming-languages


## Racket
Racket is a general purpose, multi-paradigm programming language in the Lisp-Scheme family. One of its design goals is to serve as a platform for language creation, design, and implementation. The language is used in a variety of contexts such as scripting, general-purpose programming, computer science education, and research.

## DrRacket
DrRacket (formerly DrScheme) is widely used among introductory Computer Science courses that teach Scheme or Racket and is lauded for its simplicity and appeal to beginner programmers. The IDE was originally built for use with the TeachScheme! project (now ProgramByDesign), an outreach effort by Northeastern University and a number of affiliated universities for attracting high school students to computer science courses at the college level.
The editor provides source highlighting for syntax and run-time errors, parenthesis matching, a debugger and an algebraic stepper. Its student-friendly features include support for multiple "language levels" (Beginning Student, Intermediate Student and so on). It also has integrated library support, and sophisticated analysis tools for advanced programmers. In addition, module-oriented programming is supported with the module browser, a contour view, integrated testing and coverage measurements, and refactoring support. It provides integrated, context-sensitive access to an extensive hyper-linked help system named "Help Desk".

For more Racket samples, check out: **_[Racket Problem Sheet](https://github.com/ianburkeixiv/RacketProblemSheet)_**

### References
- Wikipedia, https://en.wikipedia.org/wiki/Racket_(programming_language)
- Racket org, https://racket-lang.org/
- https://joshldavis.com/2013/09/30/difference-between-imperative-and-functional-part-1/

