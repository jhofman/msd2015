This class will involve a good deal of coding, for which you will need some basic tools. Please make sure your computer has the following tools before the first day of class:

### An interactive [bash](http://www.gnu.org/software/bash/) shell.

This will give you the ability to interact with your filesystem via the command line instead of a GUI such as Windows Explorer or Mac Finder. We will also use bash to automate acquiring and cleaning data sets.

If you use Windows, you can [install Cygwin](https://cygwin.com/install.html) which includes bash and a terminal application by default. Mac OS X includes a bash shell by default, and a terminal application in ``/Applications/Utilities/Terminal.app``. Linux also includes a working shell and terminal.

Verify that your environment is properly configured by typing the following commands indicated after the `#` symbol. You should see something similar  (although not identical) to the following:

    # echo $SHELL
    /bin/bash
    
    # grep --version
    grep (BSD grep) 2.5.1-FreeBSD
    
    # cut
    usage: cut -b list [-n] [file ...]
       cut -c list [file ...]
       cut -f list [-s] [-d delim] [file ...]


### A [Git](http://git-scm.com) client

Git is a version control system that allows you to track modifications to files and code over time. It also facilitates collaborations so that multiple people can share and edit the same code base.

If you are on Windows you can install [Github for Windows](https://windows.github.com) which provides both the command line tool for git and a graphical user interface. Alternatively, if you can install git as an optional package under Cygwin. We recommend the Github application, as it will be easier to interface with Github using it. Likewise, modern versions of Mac OS X have a git client installed by default, but the [Github for Mac](https://mac.github.com) tool is a recommended addition. Linux users can install git with the appropriate package manager (e.g., ``yum install git`` on RedHat or ``apt-get install git``), and there a number of different [git GUIs for Linux](http://unix.stackexchange.com/questions/144100/is-there-a-usable-gui-front-end-to-git-on-linux).

### A [Github](http://github.com) account

Github is a platform that facilitates collaboration on projects that use git. You can use it to host projects, publish them to the web, and share them with others, among other things. See [here](https://help.github.com/articles/signing-up-for-a-new-github-account/) for a guide to creating a free account.

Once you have an account, clone the [course repository](https://github.com/jhofman/msd2015) using your local git client.



