1. What are classes? Be sure to define the following terms in your explanation and describe the relationships between them:

*class
*state
*behavior
*instance variable
*instance method

Classes are another ruby construct used to provide developers with more
powerful tools. Class allow developers to group function that is naturally
related. For example, a class contains data (aka attributes) that can be
accessed by all methods associated with the class maintains persistent 
state for the class. Ruby methods associated with the class implement the behaviors associated with the class. An instance an object that is created
using the class as a template. For example, a class might be Dog and you 
would create an instance called Fido. The Fido instance variables would 
contain state information like age, name, last checkup etc. Instance 
methods would be behaviors such as bark, roll over, fetch etc...

2. What are attributes?

Attributes save the state of an instance. I.e. all the data that needs
1to persist over time.

3. Give an example of a real world object, and describe how you might assign its attributes if you were to design a class to represent that object.

    - see the example in the answer to question 1

4. What is the purpose of the initialize method? When does it run?

The initialize method exists for all classes and is run then the new 
method is invoked to create an instance of the class. It allows developers
to populate any instance variables that might be needed by late instance 
methods

5. What are modules?

Modules are special classes that can be used to aggregate code that is 
shared by other classes and/or is related in some way. This minimizes 
the duplication of code and again increases developer productivity since 
they can avoid having to write and debug the code themselves.

6. What are the different ways you can use a module?

- in the standalone version of modules, you use a require statement to 
    import the code and gain access to the module function by using the 
    module name. For example I might import a Dog module and and use it
    when playing with my house furniture tracking app: 
    Dog.chew_up(my_new_couch)

- in the Mixin version of modules, you gain access to the code by 
    including it directly into your class definition. So for example 
    you could write a set of debug methods in a Debug module and use
    them in all your class definitions as follows:
    include Debug
