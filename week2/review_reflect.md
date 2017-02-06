1. Briefly describe your understanding of what the browser does, including definitions of the following:
 * client
     - the client executable is the piece of code that manages the interaction with both the bits displayed on the screen and the input from the user (mouse and keyboard). Depending on what the user does (and sometimes what the client side code does), information is sent back over the network to the server using HTTP.
 * server
     - the server code does most of the heavy lifting in terms of deciphering the HTTP request and figuring out how to satisfy it and if appropriate to send a response back to the client via HTTP. For example inside the HTTP request may be something that turns into a database lookup and the server would do the lookup and send the results back to the client via HTTP. The client would then decide how to display the results.
 * render
     - this is the term usually associated with how the browser executable turns HTML into pixels on whatever screen is being used. 
2. What is HTML? In your answer, include definitions of the following: 
 * tag
     - these are the different keywords used by HTML elements such as the following: html, head, body, h1, ol...
 * element
     - an element is the complete HTML object that includes the tag, any attributes, any text and the ending tag (if needed).
 * node
     - this is a concept of how the DOM (document object model) handles HTML and other languages across all platforms and is a container used in building a tree structure.
 * attribute
     - these are modifiers associated with elements. For example on the anchor element, the _href_ attribute is how you provide the URL for the anchor.
 * block element
     - these elements bound large sections/groups of other elements. For example paragraphs, ordered lists etc.
 * inline element
     - this is an element that modifies text in the middle of a block context. For example turn a word to _italics_ .
3. Very briefly, explain the purpose of the following elements: 
 * head
     - holds data for the HTML page including meta data such as charset that normally doesn't display (but may affect the display)
 * body
     - this is the main section of the HTML document where most of the data to be displayed is held
 * p
     - paragraph tag used to show where a paragraph starts and ends
 * form
     - tag to wrap around a form which is normally used to collect some data from the user and send it back to a server for processing
 * div
     - division tag used to tell the browser to start a new section of the HTML doc
 * span
     - this is an inline tag element groups inline elements in a doc. For example it is used to color part of a line of text.
 * select
     - this tag is used in a form to create a drop-down list
 * h2
     - second level tag used for emphasis and labeling the start of a new section in the doc.
 * ol
     - the tag used to mark the start of an ordered list. Actual list elements used the _li_ tag.
 * ul
     - the tag used to make the start of an unordered list
 * table
     - tag that marks the start of a table section in the doc.
 * tr
     - tag that marks the start of a row in a table
 * td
     - tag used to mark the start/end of a table definition (cell)