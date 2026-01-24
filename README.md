# AMPL models for solving Sudoku problem

> [!IMPORTANT]
> A **standard Sudoku** contains 81 cells, in a 9×9 grid, and has 9 boxes, each box being the intersection of the first, middle, or last 3 rows, and the first, middle, or last 3 columns. Each cell may contain a number from one to nine, and each number can only occur once in each row, column, and box. A Sudoku starts with some cells containing numbers (clues), and the goal is to solve the remaining cells.
>
> Wikipedia: [Sudoku solving algorithms](https://en.wikipedia.org/wiki/Sudoku_solving_algorithms)

> [!NOTE]
> An **integer programming problem** is a mathematical optimization or feasibility program in which some or all of the variables are restricted to be integers. In many settings the term refers to integer linear programming (ILP), in which the objective function and the constraints (other than the integer constraints) are linear.
>
> Wikipedia: [Integer programming](https://en.wikipedia.org/wiki/Integer_programming)

## AMPL Models based on MILP
+ [2D AMPL model with alldiff constraint](./standard-sudoku/2d-model.ampl)
+ [3D AMPL model with binary matrix](./standard-sudoku/3d-model.ampl)


## Sources of Sudoku Problems
+ [sudoku.com](https://sudoku.com)
+ [The New York Times Sudoku](https://www.nytimes.com)
+ [Sudoku Bliss](https://sudokubliss.com/)
