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