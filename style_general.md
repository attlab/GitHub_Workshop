### This is a general principles style guide for writing readable code

## Outline
- Script header (general and libraries)
- Variable names
- Function names
- Function parameters and output

## Script headers
#### General Header for scripts
Depending on the type of script it is, different information is necessary. For example, if the script contains a library of functions, the comments should be above those function definitions, but if the script is a single function then the information seen in the section `Function parameters and output` should be included in the header. 
```c++
/*******************************************************************************
[name of file]
Purpose: Illustrate how to write a header. 
Author(s): John Doe
Date created: 01-01-1901 
Date last modified: 12-01-1994
 
This is where a more detailed description would be. This example uses C++ to 
illustrate how multi-line comments can be useful. Below is how MATLAB allows
multi-line commenting:
%{
  MATLAB multi-line comment
%}
Indenting inside the multi-line comment is not necessary but is sometimes done. 
MATLAB does not allow text on the same line as '%{' or '%}'.
*******************************************************************************/
```

## Variable names
First, think about the scope of the variable. If it is a variable that will be used throughout the script then a more meaningful name is warranted. If the variable is an iterator in a loop then a highly descriptive name may not be necessary.
A few things to note: 
- begin variable names with lowercase
- capitalize subsequent words or use underscore for readability
- soft code as much as possible. Ex: `1:20` vs `1:length(vector)` in `for` loop
- if possible, align columns of side comments
- iterator is often a single letter or prefixed with a single letter

```r
### EXAMPLE IN R ###
performanceScores = c(7, 7, 6, 5, 8, 9, 7, 7, 8, 10, 10, 4, 6, 7, 8, 8, 1, 3, 5, 9)  # Initialize scores
scaled_performanceScores = scale(performanceScores)  # generate vector of z scores

for(iScore in 1:length(scaled_performanceScores))     # iterate through entire length of vector
  if(scaled_performanceScores[iScore] >= 0) {         # print "Good job!" for neutral & good reviews
    print("Good job!")
  } 
  else {                                              # Be cruel and fire people with bad reviews
    print("YOU\'RE FIRED!!!")
  }
```

## Function names
There are generally a few common types of user-defined functions: 
- **Void**: Void functions are non-value returning functions. Ex: `setMainDirectory(path)` could be a function that sets the main directory of a project to the path contained in `path`. These functions may or may not take input, but do not produce an output. They should be named for what they do
- **Return single value**: These functions return a single value, some examples are `mean(x)` and `sd(x)`, which are *probably* actual functions in some langauge, return the mean and standard deviation, respectively, of x. They should be named for the value they return.
- **Accessing object or property**: These functions can return or manipulate objects or object properties. Suppose an object `marchMadness15`contains the game data for 2015 March Madness tournament, and this object contains the winning team name in a character structure called `champions`. Two common ways of naming this type of function are `getChampions(marchMadness15)` and `marchMadness15.champions`. If using the `.` method then the get/set/return may not be necessary, but if the other method is used then it helps with readability to write `getChampions(marchMadness15)` or `returnChampions(marchMadness)`, both of which will return `Duke`. 
- **Compute**: 
- **Find**: 
- **Initialize**: 



## Function parameters and output
Syntax/usage
```matlab

```
