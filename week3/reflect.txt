1. Name at least three categories of CSS adjustments (example: colors)?
* font-size is used to adjust text font size
* display can be used to turn off element display (display:none)
2. What are the three ways to link a CSS rule to an HTML document? Which one is the best and why?
* link to a separate file
* embed the css in the html file
* inline css
* I would think link is the best since it allows for the style code to be separated from the content which at a minimum makes it more readable and easier to maintain
3. What is a selector? Give examples of at least three types of selectors.
* class (preceded class name with period: .my_class)
* ID as defined by the id= attribute (preceded by a #: #my_id)
* element name as in the html tag (h1,p ...)
4. What is the box model?
* this is the layout for rendering an html element and defines things such as padding and margins.
5. Explain and give an example of the cascading effect of CSS.
* when each CSS rule is loaded, it is merged into the set of existing rules. That way you only specify the attributes to want to change and you "inherit" the existing attributes. It also means that the most specific rule determines an behavior. For example if both an element rule and an ID rule match a specific element and they both specify a font size, the ID rule wins since it is more specific.
6. Name two CSS techniques that assist in responsive design.
* mobile first design: make it work on small screens first
* media queries (@media) can be used to change styles depending on the type of media being used.