### This is a general principles style guide for writing readable code

## Outline
- Script header (general and libraries)
- Variable names
- Function names
- Function comments

## Script headers
#### General Header for scripts
Depending on the type of script it is, different information is necessary. For example, if the script contains a library of functions, the comments should be above those function definitions, but if the script is a single function then the information seen in the section `Function parameters and output` should be included in the header. 
```c++
/// EXAMPLE IN C++ ///
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
- **Void**: Void functions are non-value returning functions and can do a variety of things like modifying the environment or plotting data. Ex: `setMainDirectory(path)` could be a function that sets the main directory of a project to the path contained in `path`. These functions may or may not take input, but do not produce an output. They should be named for what they do
- **Return single value**: These functions return a single value, some examples are `mean(x)` and `sd(x)`, which are *probably* actual functions in some langauge, return the mean and standard deviation, respectively, of x. They should be named for the value they return.
- **Accessing object or property**: These functions can return or manipulate objects or object properties. Suppose an object `marchMadness15`contains the game data for 2015 March Madness tournament, and this object contains the winning team name in a character structure called `champions`. Two common ways of naming this type of function are `getChampions(marchMadness15)` and `marchMadness15.champions`. If using the `.` method then the get/set/return may not be necessary, but if the other method is used then it helps with readability to write `getChampions(marchMadness15)` or `returnChampions(marchMadness)`, both of which will return `Duke`. 
- **Compute**: Functions for computing something and generally has one or more outputs. One example could be a function called `computeDescriptiveStats(students)` that computes the descriptive statistics for a set of students, which could return the information in a variety of ways. The name should be descriptive enough for the reader to have an idea or know what computations will be done with this function. 
- **Find**: This is fairly self-explanatory but deserves it's own function type because *find* functions are heavily used in programming and tend to be very important and different for various tasks. One example could be a function that finds the ugliest puppy from a set of puppies. Let's call this `findUggoPup(pups)`. Naming these functions tends to be simple because you basically write `findObject()` where object is the thing you're looking for. 
- **Initialize**: Used for initializing stuff. Example: a function `initReadme()` could be used by a lab to initialize a `readme` file in a current directory so that every lab project comes with a standard set of information at the `readme`. The convention is `initThing()` where `Thing` is the thing(s) you want to initialize. 



## Function comments
Writing comments for the functions you create is very important. There are a few things that tend to be extremely helpful. 
- Purpose
- Input/param (including data type and dimensions)
- Output (including data type and dimensions)
- Syntax/Usage
```python
### EXAMPLE IN PYTHON ###
# Purpose: Get a single student's weighted average score
# @param student: dictionary containing 4 keys: {'name', 'homework', 'quizzes', 'tests'}
# @return total_average: float
# 
# Syntax: 
#   Suppose students is a list of student dictionaries.
#   > weightedAverages = []    # create empty list
#   > for student in students: # iterate through list and compute weighted averages
#   >   weightedAverage.append(get_average(student))
#
def get_average( student ):
    homework_avg  = 0.1 * average( student["homework"] )
    quizzes_avg   = 0.3 * average( student["quizzes"]  )
    tests_avg     = 0.6 * average( student["tests"]    )
    total_average = homework+quizzes+tests
    return total_average
```
