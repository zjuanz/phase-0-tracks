##Variables
1. What is a variable? Why might a programmer use a variable?
- a variable is a name for a storage location in memory. a programmer uses variables to save data that might be used later in a program. Like a string for someones name.

2. If the value of first_name is "Abraham" and last_name is "Lincoln", explain the order in which Ruby will run the line full_name = first_name + last_name, and what the final result will be.
- first ruby would look up the first_name and last_name variables so you would have "Abraham" + "Lincoln". Then in would see that the variables are both strings so addition becomes concatenation: "AbrahamLincoln". Then since this is now a primitive data type it would assign that string to the variable full_name. The final result would be "AbrahamLincoln".

##Data Types
3. For each of the following data types, write a short definition and give at least one example of when you might use the data type in a program. (Don't use an example we've already provided.)

*string
    -this is a list of characters. Names have been already used so another might be address: "3401 Southill Circle, Austin, TX 78703"
*integer
    - this is used for whole numbers such as a counter:0,1,2,3 etc...
*float
    - this is the type used for decimal numbers such as 1.5
*nil
    - this is a special type used for when variables have been uninitialized
*boolean
    - this is a type that has the value of either true or false and usually used in conditional statements

##Algorithms
4. What is an algorithm?
- and algorithm is usually a step by step procedure used to accomplish some sort of goal. For example a description of how to wash clothes would include step by step instructions someone could follow to successfully turn piles of clean clothes into stacks of nicely folded clothes.

5. What are two common categories of algorithm in computer science? 
- searching for data in a directory/repository
- sorting data
- number crunching/analysis/display

##Methods
6. What is a method? Why might a programmer choose to use a method?
- a method is a way to save a set piece of code that will be reused instead of retyping the same code over and over. It takes arguments for input and returns a value. It may also have other side effects (desirable or otherwise). Methods also make code easier to read. Combining methods also makes it easier to solve bigger and bigger problems. 

7. Define the following terms as they relate to a method. 

*return value
    - this is the value that the method provides to the code that invoked it.
*side effect
    - this is any change a method might have in addition to the return value. Changing a global variable for instance...
*parameter
    - these are the variables used in the method definition to refer to the data being passed to the method
*argument
    - these are the variables used when the method is invoked.
*implicit return
    - by default (as in there's nothing else needed), the value a method passes back to the invoking code is the value of the last line executed in the method. 

8. What are global scope and method scope? How do those scopes impact the availability of data at different points in a program?
    - global scope is the variable name space that all code can access/knows about/can manipulate whereas method scope variables can only be seen by the code within the method. This means you can use the same variable names in methods if needed without having any problems/unintended side effects. It also means you need to be careful and plan carefully ahead of time as to how global variables are used since any code can affect it.

##Control Flow
9. What is control flow? Why might a programmer choose to use flow control? 
- it is common in algorithms to have to take different steps depending on conditions or to repeat steps until certain conditions are met. flow control refers to how to produce code that handles these situations.

10. Define the following terms as they relate to flow control.

*loop
    - repeat a piece of code under to the control of a condition statement
*if
    - check a conditional statement and if true execute a set of code
*else
    - if the above conditional is false then execute a different set of code
*elsif
    - special variant of else that allows for checking another conditional if the original conditional is false. allows for chaining multiple checks of conditions.
*while
    - loop control statement that loops while a conditional statement is true
*until
    - loop control statement that loops until a conditional statement is false