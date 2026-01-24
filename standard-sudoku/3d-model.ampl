# Sets
set ROWS := 1..9;
set COLS := 1..9;
set VALS := 1..9;
set BOXES := 1..9;

# Parameters - initial values (0 means empty cell)
param given{ROWS, COLS} default 0;

# Decision variables - value assigned to each cell
var X{ROWS, COLS, VALS} binary;

# Objective (feasibility problem, so objective is arbitrary)
minimize dummy: 0;

# Each cell gets exactly one value
subject to one_value_per_cell{i in ROWS, j in COLS}:
    sum{v in VALS} X[i, j, v] = 1;

# Each value appears exactly once in each row
subject to one_per_row{i in ROWS, v in VALS}:
    sum{j in COLS} X[i, j, v] = 1;

# Each value appears exactly once in each column
subject to one_per_col{j in COLS, v in VALS}:
    sum{i in ROWS} X[i, j, v] = 1;

# Each value appears exactly once in each 3x3 box
subject to one_per_box{v in VALS, br in 0..2, bc in 0..2}:
    sum{i in 3*br+1..3*br+3, j in 3*bc+1..3*bc+3} X[i, j, v] = 1;

# Fix initial values
subject to fix_initial{i in ROWS, j in COLS: given[i, j] > 0}:
    X[i, j, given[i, j]] = 1;
