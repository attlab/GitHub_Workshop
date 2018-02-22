This example will show you how to clone a repo to your machine, edit files, and push/pull edits. 

## General workflow for files
- **Working directory**: Make changes to files; additions (+), deletions (-), modifications
- **Staging Area**: Bring changes into the staging area, useful for managing which changes are committed and breaking large changes into multiple commits
- **Repository**: Save changes to a repo (commit)

# Cloning a repo to your local machine
First, nagivate to the directory in which you wish to clone the repo. 
```
$ cd /Volumes/Extended\ Drive/UCSB/attLab/
```
Next, tell `git` to `clone` in order to copy the data from the github repo to your machine. The following will clone to the current directory. 
```
$ git clone https://github.com/attlab/GitHub_Workshop
```
Now the files should be on your machine. You can verify with `ls`, which will list most of the objects in the current directory. Navigate to the repo with `$ cd Github_Workshop`.

# VIM & Status
Suppose we want to add a new file called `cris.txt`. We can either create the file with any text editor then add this file through the OS's file explorer, or we can use VIM. VIM is a text editor that comes with macOS. 

#### Using your machine's UI to create `cris.txt`
For this method you can create the file using any of your preferred methods (Notepad, Sublime, Atom, etc.). Then you move the file to the repo directory, so for me that would be `/Volumes/Extended Drive/UCSB/attLab/GitHub_Workshop`.

#### Using VIM to create `cris.txt`
`$ vi cris.txt` will open the editor within the terminal and create a new text file called `cris.txt`. Press `i` to enter `insert` mode, which allows you to enter text. Enter any text you'd like and then press `esc` to exit `insert` mode. Next, type `:wq` to tell the machine to write the changes to the file and quit VIM.

#### Status checking
Using `$ git status` we can check the status of our repo. Depending on what stage you are in, you will see different output, all of which tells you which files are ready to commit, which are ready to be staged, and which files are untracked. 
`cris.txt` is a new file and should appear under `Untracked files:`. The next step in getting this file to the repo is adding it to the staging area.

# Staging
Now we can add `cris.txt` to the stage with `$ git add`, however, this function needs some additional parameter(s). We can either add each file by name or add all of the files that are untracked or have modifications. Both lines below will add our file to the staging area.
```
$ git add cris.txt
$ git add --all
``` 
Using `$ git status` again will reveal the objects in the staging area. 

Now suppose we realized a mistake in our file and wanted to make another change before committing. We can go make that change and then look at what was changed using `git diff cris.txt`. 
This will return the lines (content and locations) that are different for us to inspect. In order to stage the new changes we must re-stage the file. Now our file is ready for a commit. 

# Commit and Push
The line below is a simple way to commit the objects in the staging area. The `-m` flag tells git that we will include a message along with the commit. A message is always necessary and omitting the `-m` flag will automatically open the text editor for you to add a message. With the `-m` flag you can add a note in quotes. Anything ~50 characters or less is appropriate for this flag. 
```
$ git commit -m "Cris commit" 
```
We can use `$ git status` to show where we are in relation to the branch, and in our case we should be 1 commit ahead of the branch. 
Next, use `$ git push` to push your changes to the repo on github. 

Now you should be able to find the new file on `https://github.com/attlab/GitHub_Workshop`. You may need to add your username and password if this is your first time interfacing with git through the terminal. 

You can check your commit history with `$ git log`. 

# Removing files
If you'd like to delete `cris.txt` you can do the following: 
```
$ git rm cris.txt
$ git commit -m "delete cris.txt"
$ git push
```
You can verify that this worked by using `$ git status` or checking the repo in your browser. 
