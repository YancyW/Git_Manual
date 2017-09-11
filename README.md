# Git_Manual
How To Use Git &amp; GitHub --- for beginner

## Some basic manual  

- The reference of this manual is http://stormzhang.com/posts/, goto his website to read detail explaination.
- How to use markdown :http://www.jianshu.com/p/q81RER

## Do some config to make git more easier to use!

### choose some alias to make things more easier.
This can be realized by the command (NOTE: the double quota character "" is not needed):
git config --global alias."new name" 'old name'

There is some comon alias:  
git config --global alias.co checkout  
git config --global alias.ci commit   
git config --global alias.st status   
git config --global alias.br branch   
git config --global alias.psm 'push origin master'  
git config --global alias.plm 'pull origin master'  
git config --global alias.log "log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative" #check log file

### change editor
use git config -l to check all setting

git config --global core.editor "vim"  # set editor with vim    
git config --global core.quotepath false  # set to show Chinese file name   
git config --global color.ui  true     # set color for git  


git config --global user.name "[your name]"  # set your name    
git config --global user.email "[your email]"  # set your email 



## git command
git status       # check the status of the git repository   
git init         # init a folder to a git repository    
git add          # add files to a submit list   
git commit       # submit files 

git branch       # check all branch 
git branch -r    # check branch on the server   
git branch  [branchname]     # create a new branch  
git branch -d    # delete a branch if this branch is already merge to the master branch     
git branch -D    # delete a branch whatever 

git checkout [branchname]   # change to the branch  
git checkout [tagname]        #create and change to that branch     
git checkout [commitname]     #change to that comit     
git checkout -b [branchname]  #change to that tag   

git checkout master  # change to master branch and then do  
git merge/rebase [branchname]  # merge the branch to master branch  


get tag [tagname] # add tag for package version     
get tag           # check tags status   


git diff [commit1] [commit2]   # compare the differences between commit     
git diff [branch1] [branch2]   # compare the differences between branch     
git diff  --staged             # compare the differences between now and repository     

git stash  # save all things into tmp region    
git stash list  # check tmp region  
git stash apply/pot  # get files in tmp region back     
git stash drop    # clear the newest record in region back      
git stash clear   # clear all records in region back    



## basic concept for github

### first application
generate SSH key          ----------  ssh-keygen -t rsa     
add SSH key on the github ----------  setting -> SSH and GPG keys  -> New SSH key ->  fill the  ~/.ssh/id_rsa.pub file text in the dialog window    


### upload and download

git push origin master # upload master code to server       
git push origin [branchname ]# upload branch code to server     
git push origin :[branchname]# delete branch in the  server     


git checkout [branchname]  origin/[branchname] # download branch in the  server to local        
git pull origin master # download code to local     
git remote -v          # check how many repository we have for this code        


