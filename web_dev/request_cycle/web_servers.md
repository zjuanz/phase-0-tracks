1. In phase-0-tracks/web_dev/request_cycle create a Markdown file called web_servers.md. Research the following questions and record your answers in that file.
2. What are some of the key design philosophies of the Linux operating system?
- file system similar to what's on windows/mac OS. e.g. files in nested directories
- users
- some files can be executed/run as processes
- basic interaction model is via a terminal/console. you login and get a shell.
3. In your own words, what is a VPS (virtual private server)? What, according to your research, are the advantages of using a VPS?
- it's a virtual (as in doesn't really physically exist) server that exists somewhere in a cloud somewhere in the internet. It's private in that it's wall off in such a way that only you have access and no one else (unless you decide to make it available).
- here are a few advantages of a VPS
    + it's cheaper than getting an actual server
    + faster/simpler setup
    + if you mess it up you can destroy it and recreate it fairly quickly
    + flexible. you can get many different configurations relatively quickly
    + you can scale to fix your problem/solution
4. Optional bonus question: Why is it considered a bad idea to run programs as the root user on a Linux system?
- root on UNIX systems by default has complete access to all aspects of the system. That means read/write and the ability to destroy. If a program gets hacked somehow or just runs amok, it does so with all that power. Usually you want to run a program with the minimum set of access to be able to complete it's processing.