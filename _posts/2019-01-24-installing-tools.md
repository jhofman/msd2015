---
layout: post
title:  "Installing tools"
categories: homework
---

This class will involve a good deal of coding, for which you will need some basic tools. Please make sure to set up the following tools after the first day of class.

### An interactive [bash](http://www.gnu.org/software/bash/) shell

This will give you the ability to interact with your filesystem via the command line instead of a GUI such as Windows Explorer or Mac Finder. We will also use bash to automate acquiring and cleaning data sets.

If you use Windows, you can try the [builtin bash/Ubuntu](http://www.howtogeek.com/249966/how-to-install-and-use-the-linux-bash-shell-on-windows-10/) shell on Windows 10 or you can [install Cygwin](https://cygwin.com/install.html) which includes bash and a terminal application by default. Mac OS X includes a bash shell by default, and a terminal application in ``/Applications/Utilities``. Linux also includes a working shell and terminal.

Verify that your environment is properly configured by typing the following commands indicated after the `#` symbol. You should see something similar  (although not necessarily identical) to the following:

    # echo $SHELL
    /bin/bash
    
    # grep --version
    grep (BSD grep) 2.5.1-FreeBSD
    
    # cut
    usage: cut -b list [-n] [file ...]
       cut -c list [file ...]
       cut -f list [-s] [-d delim] [file ...]


If you're new to the command line, see Codecademy's [interactive tutorial](https://www.codecademy.com/courses/learn-the-command-line/lessons/navigation/exercises/your-first-command?action=lesson_resume), this [crash course](https://learnpythonthehardway.org/book/appendixa.html), and Software Carpentry's [guide](http://swcarpentry.github.io/shell-novice/).
Lifehacker's [command line primer](http://lifehacker.com/5633909/who-needs-a-mouse-learn-to-use-the-command-line-for-almost-anything) is also decent.

O'Reilly's [Classic Shell Scripting](http://shop.oreilly.com/product/9780596005955.do) book is a more complete reference.


### A [Git](http://git-scm.com) client

Git is a version control system that allows you to track modifications to files and code over time. It also facilitates collaborations so that multiple people can share and edit the same code base.

If you are on Windows you can install [Github for Windows](https://windows.github.com) which provides both the command line tool for git and a graphical user interface. Alternatively, you can install git as an optional package under Cygwin. We recommend the Github application, as it will be easier to interface with Github using it. Likewise, modern versions of Mac OS X have a command line git client installed by default, but the [Github for Mac](https://mac.github.com) tool is a recommended addition. Linux users can install git with the appropriate package manager (e.g., ``yum install git`` on RedHat or ``apt-get install git``), and there are a number of different [git GUIs for Linux](http://unix.stackexchange.com/questions/144100/is-there-a-usable-gui-front-end-to-git-on-linux).

Complete this relatively brief [interactive tour of git](https://www.codeschool.com/courses/try-git). See this [one page guide](http://rogerdudler.github.io/git-guide/) for explanations of the usual git workflow and most common commands, or [here](http://kbroman.org/github_tutorial/) for a more verbose guide. Github also has an [introductory video](https://www.youtube.com/watch?v=U8GBXvdmHT4), some [training courses](https://services.github.com/resources/), and a handy [cheatsheet](https://services.github.com/on-demand/resources/cheatsheets/).


### A [Github](http://github.com) account

Github is a platform that facilitates collaboration on projects that use git. You can use it to host projects, publish them to the web, and share them with other people. [Create a free account](https://help.github.com/articles/signing-up-for-a-new-github-account/) if you don't already have one.

Once you have an account, clone the [course repository](https://github.com/jhofman/msd2019) using your local git client. This is most easily done on the command line as follows:

    # git clone https://github.com/jhofman/msd2019.git
	Cloning into 'msd2019'...
	remote: Enumerating objects: 6, done.
	remote: Counting objects: 100% (6/6), done.
	remote: Compressing objects: 100% (4/4), done.
	remote: Total 6 (delta 1), reused 0 (delta 0), pack-reused 0
	Unpacking objects: 100% (6/6), done.

When this is complete, verify that you have a local directory called ``msd2019`` containing a ``README.md`` file.

### R and RStudio

R is a useful programming language for exploratory data analysis, data visualization, and statistical modeling. RStudio is a popular integrated development environment (IDE) for working in R.

First, download and install R from a [CRAN mirror](https://cloud.r-project.org/). Then download Rstudio from [here](https://www.rstudio.com/products/rstudio/download/). Finally, install and load some important packages as follows:

    install.packages('tidyverse')
	library(tidyverse)

If you're new to R, see the [Code School](http://tryr.codeschool.com/) and [DataCamp](http://datacamp.com/courses/free-introduction-to-r) online tutorials.

We will discuss all of these tools in more detail in class.
