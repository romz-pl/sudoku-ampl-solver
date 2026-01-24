# Sudoku Solver using alldiff constraint

# Parameters
param n := 9;  # Grid size (9x9)
param s := 3;  # Box size (3x3)
set ROWS := 1..n;
set COLS := 1..n;

# Given clues (0 means empty cell)
param given{ROWS, COLS} default 0;

# Decision variables: value in each cell (1 to 9)
var X{i in ROWS, j in COLS} integer >= 1 <= n;

# Objective (feasibility problem, so objective doesn't matter)
minimize dummy: 0;

# Fix the given clues
subject to clues{i in ROWS, j in COLS: given[i, j] > 0}:
    X[i, j] = given[i, j];

# All values in each row must be different
subject to row_diff{i in ROWS}:
    alldiff{j in COLS} X[i, j];

# All values in each column must be different
subject to col_diff{j in COLS}:
    alldiff{i in ROWS} X[i, j];

# All values in each 3x3 box must be different
subject to box_diff{bi in 0..s-1, bj in 0..s-1}:
    alldiff{i in bi*s+1..(bi+1)*s, j in bj*s+1..(bj+1)*s} X[i, j];
