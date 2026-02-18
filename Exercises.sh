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
git log #repo hsitory

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






#### INTERMEDIATE GIT

## Git Branches

# list all branches (*=current branch)
git branch

#switch to a branch
git switch branch_name

# create a new branch
git branch new_branch

#create and switch to a new branch 
git switch -c new_branch

## Modyfying a branch

# change name of current branch
git branch -m new_branch_name

# delete a branch
git branch -D branch_name

# merging when in main branch
Merge the ai-assistant branch into the main branch.


## Cloning a repo
#Clone /home/repl/datacamp in your current directory.

git clone /home/repl/datacamp

# Add the name back-up for the /home/repl/datacamp repo.
git remote add back-up /home/repl/datacamp

# List all remotes including their URL(s).
git remote -v #verbose

# Fettching from remote

# Run a command to find out the name(s) of remote repos linked to your project.
git remote

#Fetch from the remote origin repo into your local main branch.
git fetch origin 

## Pulling from remote
# Pull the remote origin repo's front-end branch into your current local branch.
git pull origin front-end

# Compare origin's main branch with your local branch
git diff origin

# Pushing to remote
#Push your local documentation branch to the origin remote repo.
git push origin documentation



##### GITHUB

# cloud based version control system
# version control is a way of tracking changes (diffrent states of a file)

### README.md

# for headings
# **something** = bold
# *somethong* = italics
# [something] = hyperlink
# ![something] = image

# - need to be descriptive
# - anyone should understand our project
# - list contents of repo
# - clearly explains the project

##README.md extras

# - how the project came about
# - the motivation
# - limitation
# - challenges
# - what problems we are trying to solve
# - what the intended use is
# - credits
# - toc


### Personal Access Token (PAT)

# an alternative to password 
# only requiquired when accessing via the terminal

## Forking a repo
# forking a repo creates a copy of the original repo


## GITHUB ADMINSTRATION

# covers how to manage access at the organization, team, and repository levels to keep your projects secure and efficient. 


''' A GitHub Organization is a centralized workspace where we manage multiple projects efficiently.
 It provides role-based access, ensures users have the proper permissions and
 enforces security policies to protect our data.
'''

''' In GitHub organizations, roles define access and responsibilities.
Owners have full control,
Members collaborate with standard permissions, 
Outside Collaborators have limited access to specific repositories. 

Additional roles include: 

Moderators managing interactions in public repositories. 
Billing Managers, who handle billing. 
Security Managers, overseeing security settings. 
GitHub Enterprise Cloud offers even more flexibility with custom roles.'''

 # Managing Teams

''' Teams in a GitHub organization are essential for streamlining collaboration. \
By grouping users into teams, we can easily manage permissions and organize our projects. 
Owners and Members can create and organize teams, grouping them by project, role, or department. 
Nested teams allow the mirroring of internal hierarchies, such as a data team with sub-teams like data engineers and data scientists. 
This setup ensures clear delegation.'''


# Administration at repository level

''' Lastly, lets recall repository roles. 

From least to most access: 

Read: viewing and discussing the project. 
Triage: managing issues and pull requests. 
Write: actively pushing code. 
Maintain: managing the repository without sensitive actions. 
Admin: full control, including security management and deletion. 
Assign roles that fit each persons or teams function to provide just the right access.''' 

### Authentication and Authorization Models

# Authentication Methods

'''Methods: 
Two-Factor Authentication for added security,
SSH keys for secure connections, 
Personal Access Tokens for controlled API access,
Integrating identity providers to streamline user management.'''

# 1. Two-Factor Authentication (2FA)

''' adding an extra layer of protection. 
members must log in with both their username and password, plus a secondary form of authentication:

Security keys provide the strongest defense, 
Cloud-based TOTP apps. 
SMS codes 
GitHub Mobile are alternative options. '''

''' 
Understanding SAML SSO
01:48 - 02:17
SAML Single Sign-On (SSO) allows users to log in once and access multiple apps,
including GitHub, without re-entering credentials. 
It requires a SAML Identity Provider like Microsoft Entra ID, Okta, or OneLogin. SAML SSO
'''

# Personal Access Tokens (PATs)

''' 
a safe way to connect to GitHubs API for automation and integrations 
PATs are special codes that act like passwords but with more control over what they can do. 
They are essential for securely connecting tools like Jupyter notebooks, data pipelines, or scripts to our GitHub repositories. 
There are two types of PATs: Classic, which offers broad access, 
and Fine-grained, which gives us precise control over what the token can access.
'''

# 3. OAuth Authorization Model

''' OAuth is another secure method for granting third-party apps access to our GitHub account. 
Unlike PATs, OAuth doesn’t require sharing our password. 
Instead, it gives apps the specific permissions they need while keeping our credentials safe. 
This is especially useful for connecting GitHub to data tools like Apache Airflow, 
allowing specific access to datasets for automated workflows without exposing our entire account.'''

### Managing an InnerSource Program

'''
Open source is a software model where code is publicly available for anyone to use, modify, and share.
Whether adding features, fixing bugs, or improving documentation,

key benefits: 
rapid innovation through diverse contributions, 
high-quality peer-reviewed code, 
global access to tools, 
enhanced collaboration within a strong community
'''
# Transitioning to InnerSource

''' InnerSource, a development model using GitHub to boost collaboration, transparency, and innovation. 
By adopting these practices, we can enhance teamwork, ensure project acces


open-source practices within our organization, focusing on transparency, 
collaboration,
shared ownership. It involves setting up internal repositories and using GitHub to standardize contributions with pull request and issue templates.
'''

### Establishing a Secure Development Strategy

''' Secure development is crucial for all projects. 
By automating security tasks, 
we can prevent issues early and maintain a strong security posture with minimal effort.'''

'''
GitHub Advanced Security provides essential tools like 
Code Scanning for identifying vulnerabilities, 
Secret Scanning for protecting sensitive data, 
and features like Dependency Graph and Dependabot,


The Dependency Graph provides a complete view of our project’s dependencies, 
helping us visualize all the libraries our project relies on.
'''

#### Security Policies and Sensitive Data Management


### Introduction to GitHub Codespaces

'''
A GitHub Codespace is a cloud-based development environment that allows developers to write, test, and debug code directly in the cloud, obviating the need for complex local setups. When a codespace is created, it launc
When a codespace is created, it launches a Docker container running on a virtual machine, which is pre-configured with the necessary tools, libraries, and dependencies for the project
'''
# Understanding the GitHub Codespaces Lifecycle
# 1. Creation phase
'''You have two primary options when creating a codespace: starting from an existing project or starting a new project.'''


# 2. Rebuilding phase


# 3. Stopping phase


