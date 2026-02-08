#### INTRODUCTION TO GIT

## Creating a new repo

# 1 .Create a new Git repo called stress-performance.
git init stress-perfomance

# 2 .Change into the stress-performance directory.
cd stress_performance

# 3 .Check the status of the new repo.
git status

## Adding a file to the staging area

#Place report.md, which is in your current working directory, in the staging area.
git add report.md

# 1. Use a single command to add the two modified files to the staging area.
git add .

# 2. Check the state of files in the repo.
git status

# 3. Make a commit, including an appropriate flag so you can provide a log message "Add 2 participants and update to-do list." as part of the command.
git commit -m "Add 2 participants and update to-do list."


## Git has a command you can use to display all commits made to a repo, along with the hash, author, and time of the commit.
git log

# View information about the last two commits only.
git log -2

# View information about the last two commits made for report.md only.
git log -3 reports.m

# Display only the commit(s) made since yesterday using the appropriate flag.
git log --since 'yesterday'

#### VERSION HISTORY

git show 

# ading files to staging area
git add file_name.md

# comparing versions of same file (one in staging area)

git diff --staged report.md

## Comparing two commits

# compare using hashes
git diff ece45544 e787878  #latest commit second

# compare the econd most recent with the most recent
git diff HEAD~1 HEAD    

## Restoring and Reverting a file

#revert to last commit to all affected file
git revert 

#revert a single file   (hash or name)
git checkout HEAD~1 report.md

# unstage a file reverting back to repo
git restore

#1. Move into the data directory.
cd data

#2. Move mental_health_survey.csv out of the staging area.
git retore --staged mental_health_survey.csv 

#3. Make a commit with the log message "Add task to fix plot in report", without opening the text editor.
git commit -m "Add task to fix plot in report"
