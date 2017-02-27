Data Structures
1. Why are data structures useful in programming?
- they can hold more complex and powerful/useful forms of
data beyond just the simple data types we have used so far.
They also allow for data to be organized in ways that are more
similar to how we are used to thinking of information: a 
person data structure would have recognizable attributes 
such as age, name, birthday etc. and methods that return
things like lists of children.

Arrays
2. Define "array" and describe the characteristics of an array.
- an array is a list of objects that is accessed by an index that
for better or worse starts at 0 for the first element, 1 for the next
and also handles negative indexes that start with the last 
element being -1 and -2 being the next from the end and so on.

3. Give two original examples of data sets that an array might be well-suited for.
- a list of cities in Texas: ["Austin","Houston","Dallas","San Antonio"]
- a list of even numbers less than 10: [2,4,6,8]

Hashes
4. Define "hash" and describe the characteristics of a hash.
- a hash is similar to an array in that it is a list but it's elements are key,value pairs as in each value is addressed by it's key. An example would be a hash of family birthdays: {"dad"=>"12/21/59","mom"=>"4/14/67","baby"=>"2/21/13"}. Keys can also be a special value called a symbol which takes less storage: 
{dad:12/21/59",mom:4/14/67",:baby:2/21/13"}

5. Give two original examples of data sets that a hash might be well-suited for.
- In addition to the example above, might be a hash of family phone numbers:
{dad:5124133456,mom:5127505906}

Iteration
6. Why is iteration useful? 
- when you have lists of things, iteration is an operation that is frequently used when they are handled. Having a rich/efficient set of methods to iterate over lists (and data structures in general) makes for more useful/powerful programs.

7. Give an example of a real-life task that would require iteration if you wrote an algorithm for it.
- making and filling a grocery list. some of us have to iterate over the list several times to make sure we've gotten everything.

Blocks
8. What is a block? a block is a snippet of code that can be used to group together logically connected/encapsulated code to make it easier to reuse like in iteration for example or in passing code to a method.

9. What is a block parameter, and where does its value come from? the block parameter is the variable name(s) used to pass data to a block. The variables are listed between the | (pipe) characters in the block definition. Block parameters are slightly different from method parameters. For example they don't have to be set and the number of arguments set doesn't have to match the number in the definition.