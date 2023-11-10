# Prerequisites

Install `hugo` CLI.

Linux:

```bash
sudo apt install hugo
```

On cloning from github:
1. The git submodule where the static files are getting generated should be initialized. 

```bash
# initialize submodules

git submodule init 
git submodule update
``` 

2. For some reason the branch isn't automatically main, instead the commit hash so you can lose your head.

```bash
# be sure the public submodule is on main branch

cd domeenoblog/public
git checkout main
```

# Start a local test server

Without draft posts:

```bash
hugo server
```

With draft posts:

```bash
hugo server -D
```

# Creating content

```bash
hugo new posts/<name of post>.md
```

# Generating the static site

```bash
hugo -t <theme>

# anubis theme example:
hugo -t anubis
```

# Deploying generated static site 

```bash
# in public folder:
cd domeenoblog/public

git add .
git commit -m <message>
git push 
```
Push the changes to `github` and the site will automatically reload with latest changes.

# Happy coding!

