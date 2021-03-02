# git-auto

A Simple Shell Script To Commit And Push Automatically

[中文文档](./Readme-CN.md)

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
git-auto -o -p # execute once
```

## For Windows Users

Before you proceed to use the `git-auto` file, please make sure Git installed, otherwise please download [Git](https://github.com/git-for-windows/git/releases/download/v2.30.1.windows.1/Git-2.30.1-64-bit.exe) and install it.

1. Just click 'yes' all the way down and you will find `Git Bash` icon in the `start`.

2. Open `PowerShell`

Download the target repository if you don't have it locally yet:

```
git clone [your_repo_url]
cd [your_repo_location]
```

For those who don't yet have a repository on Github, please refer to https://docs.github.com/en/github/getting-started-with-github/create-a-repo.

3. Usage

Download the `Start-GitAutoCommit.ps1` file, and run

```powershell
.\Start-GitAutoCommit.ps1
```

More samples:

```
Start-GitAutoCommit # use current script dir as git dir, and auto commit, not push.
Start-GitAutoCommit -d /path/to/your/note's/dir   # set git dir
Start-GitAutoCommit -p # auto commit and push
Start-GitAutoCommit -s origin -p # set remote server
Start-GitAutoCommit -b main -p # set git branch
Start-GitAutoCommit -i 30 -p # set interval seconds
Start-GitAutoCommit -o -p # execute once
```

## Contributors

Thanks for your work!

PowerShell Port, by [@batkiz](https://github.com/batkiz)

[Readme-CN.md](https://github.com/defclass/git-auto/blob/master/Readme-CN.md) & Git Bash docs, by [@zhanghanduo](https://github.com/zhanghanduo)

## License

Copyright © 2020 Michael Wong

Distributed under the MIT License.
