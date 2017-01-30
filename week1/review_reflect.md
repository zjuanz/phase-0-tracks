**Instructions:** Answer the following questions either in writing (you'll upload .txt file) or by video. Feel free to refresh your memory of concepts by going back into the challenges from the week.

**No need to stress if you aren't an eloquent writer -- feel free to keep your answers short, as long as they're in your own words. We're looking for understanding, not judging your creative writing skills.**

1.**Command Line:**
* What is a shell? What is "bash?"
    - a shell is program that provides a way to type in commands that lauch programs and displays text output. most shells have builtin commands that provide a rich set of functions (for navigating the filesystem for example). a shell is usually the same regardless of which operating system is running underneath it which makes it easier to develop portable skills.
    - bash is a shell variant that is the default shell shipped with linux and macs (and now windows 10 anniversary update). bash is short for bourne-again shell which speaks to it's lineage as a replacement for the Bourne shell.
* In your own words, write what each of the following commands does:
    * `pwd` 
        - `present working directory`: what is the current full path to the directory for this shell
    * `ls`
        - `list`: list the contents of this directory. it can also be used to list the details associated with files such as timestamp etc.
    * `mv`
        - `move`: move files/directories
    * `cd`
        - `change directory`:change to a different directory in the filesystem
    * `touch`
        - `touch`:used to either create an empty file if one doesn't exist or update the timestamp on an existing file
    * `mkdir`
        - `make directory`:make a new directory (folder) in the filesystem
    * `rm`
        - `remove`:remove a file or directory. has a powerful recursive function that should be used very carefully
    * `help`
        - `help`: provides help info for bash commands
    * `find`
        - `find`: command to find files/directories with fairly robust search capabilities
    * `grep`
        - `globally search regex and print`: command to search contents of files for lines matching a regex

2.**Git:**
* What is version control and why do developers use it?
    - version control is a way to keep a history of changes made to a file over time and associated information such as who made the change and when.
    - when a problem is found in a file a developer can find out when it was introduced and more easily either fix the problem or get back to a functional version. Or if pieces are added/deleted/modified by mistake the changes can be backed out by going to a different version
* What is a commit? What are the best practices for commit messages?
    - a commit tells the version control system to make another version/sync point for a file (or files). The commit message should have enough details to help understand what is in the set of changes. There's usually not a good excuse for not having a commit message (other than being sloppy or lazy)
* What is a branch?
    - a branch is a way of creating a separate sandbox (set of versions of files) to group together a set of of usually related changes. you can have multiple branches active at once and your changes are kept separate until they are explicitly merged back in.t
* What are the 3 stages of a git change and how do you move a file from one stage to the other? 
    -   committed: changes are safely stored in git databases
    -   modified: a file has been changed so it's out of sync with the git databases
    -   staged: a modified file has been marked as being ready for inclusion in your next commit.
    -   use your favorite editor (e.g.`subl`) to modify a file. this moves the file from *committed* to *modified*.
    -   when you are want to have your changes included in the next commit you use the `git add` command to move the file to the *staged* state.
    -   once you are done with your changes and are ready for a new version to be created you can use the `git commit` command to move the file back to the *committed* state.
    -   sometimes another state of *untracked* is used for new files that git doesn't know about. the `git add` command moves the file to the *staged* state

3.**GitHub:**
* Write an explanation of and compare Git and GitHub to one another.
* In your own words, write instructions to create, clone and update a repository.
* In your own words, write instructions to fork, clone and update a repository.
* What is a pull request and how do you create and merge one?
* Why are pull requests preferred when working with teams?