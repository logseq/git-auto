# git-auto

A Simple Shell Script To Commit And Push Automatically

## Usage

Download the `git-auto` file

```
chmod +x git-auto
./git-auto
```

More samples:

```
git-auto # use current script dir as git dir, and auto commit, not push.
git-auto -d /path/to/your/note's/dir   # set git dir
git-auto -p # auto commit and push
git-auto -s origin -p # set remote server
git-auto -b main -p # set git branch
git-auto -i 30 -p # set interval seconds
git-auto -o -p# execute once
```

## For Windows Users

Before you proceed to use the `git-auto` file, please download and install [Git Bash](https://github.com/git-for-windows/git/releases/download/v2.30.1.windows.1/Git-2.30.1-64-bit.exe).

1. Just click yes all the way down and you will find `Git Bash` icon in the `start`.

2. Open `Git Bash` and download the repo you want to update to somewhere by:

```
git clone [your_repo_url]
cd [your_repo_url]
```
3. Copy the `git-auto` file into this folder.
4. Follow the [Usage](#Usage) section tutorial.
5. (Optional) You can add this file in the `.gitignore` file to avoid uploading it.

> Just remember the commands in `Git Bash` are Unix shell script, not Powershell or CMD script.

## License

Copyright © 2020 Michael Wong

Distributed under the MIT License.




