---
layout: post
title:  "Installing tools"
categories: homework
---

This class will involve a good deal of coding, for which you will need some basic tools. Please make sure to set up the following tools before the first day of class.

### An interactive [bash](http://www.gnu.org/software/bash/) shell

This will give you the ability to interact with your filesystem via the command line instead of a GUI such as Windows Explorer or Mac Finder. We will also use bash to automate acquiring and cleaning data sets.

If you use Windows, you can [install Cygwin](https://cygwin.com/install.html) which includes bash and a terminal application by default. Mac OS X includes a bash shell by default, and a terminal application in ``/Applications/Utilities``. Linux also includes a working shell and terminal.

Verify that your environment is properly configured by typing the following commands indicated after the `#` symbol. You should see something similar  (although not necessarily identical) to the following:

    # echo $SHELL
    /bin/bash
    
    # grep --version
    grep (BSD grep) 2.5.1-FreeBSD
    
    # cut
    usage: cut -b list [-n] [file ...]
       cut -c list [file ...]
       cut -f list [-s] [-d delim] [file ...]

See [here](http://cli.learncodethehardway.org/book/) for an overview of using the command line and [this pdf](http://softlayer-dal.dl.sourceforge.net/project/linuxcommand/TLCL/13.07/TLCL-13.07.pdf) for a more extensive reference.

### A [Git](http://git-scm.com) client

Git is a version control system that allows you to track modifications to files and code over time. It also facilitates collaborations so that multiple people can share and edit the same code base.

If you are on Windows you can install [Github for Windows](https://windows.github.com) which provides both the command line tool for git and a graphical user interface. Alternatively, you can install git as an optional package under Cygwin. We recommend the Github application, as it will be easier to interface with Github using it. Likewise, modern versions of Mac OS X have a command line git client installed by default, but the [Github for Mac](https://mac.github.com) tool is a recommended addition. Linux users can install git with the appropriate package manager (e.g., ``yum install git`` on RedHat or ``apt-get install git``), and there are a number of different [git GUIs for Linux](http://unix.stackexchange.com/questions/144100/is-there-a-usable-gui-front-end-to-git-on-linux).

Complete this relatively brief [interactive tour of git](https://www.codeschool.com/courses/try-git). See this [one page guide](http://rogerdudler.github.io/git-guide/) for explanations of the usual git workflow and most common commands, or [here](http://kbroman.org/github_tutorial/) for a more verbose guide.


### A [Github](http://github.com) account

Github is a platform that facilitates collaboration on projects that use git. You can use it to host projects, publish them to the web, and share them with other people. [Create a free account](https://help.github.com/articles/signing-up-for-a-new-github-account/) if you don't already have one.

Once you have an account, clone the [course repository](https://github.com/jhofman/msd2015) using your local git client. This is most easily done on the command line as follows:

    # git clone https://github.com/jhofman/msd2015.git
	Cloning into 'msd2015'...
	remote: Counting objects: 145, done.
	remote: Compressing objects: 100% (98/98), done.
	remote: Total 145 (delta 40), reused 137 (delta 37)
	Receiving objects: 100% (145/145), 454.90 KiB | 594.00 KiB/s, done.
	Resolving deltas: 100% (40/40), done.
	Checking connectivity... done.

When this is complete, verify that you have a local directory called ``msd2015`` containing a ``README.md`` file.

We will discuss these tools in more detail in class.
