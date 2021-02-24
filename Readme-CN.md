# git-auto

用于git自动提交和推送的简单命令行脚本


## 使用方法

下载`git-auto`文件，并在命令行中输入

```
chmod +x git-auto
./git-auto
```

更多用法:

```
git-auto # 将当前脚本所在的文件夹作为git文件夹,只自动本地提交(commit)，不推送(push)到Github.
git-auto -d /path/to/your/note's/dir    # 设置目标文件夹
git-auto -p                             # 自动提交并推送到Github上
git-auto -s origin -p                   # 设置远程服务器地址
git-auto -b main -p                     # 设置git的分支
git-auto -i 30 -p                       # 设置更新间隔时常
git-auto -o -p                          # 只执行一次
```

## 对Windows用户

在你使用 `git-auto` 脚本之前，请确认本地已安装 Git，否则请从 [该地址](https://github.com/git-for-windows/git/releases/download/v2.30.1.windows.1/Git-2.30.1-64-bit.exe) 下载安装

1. 一路选择"是"默认安装,在开始菜单中就可以看到新安装的`Git Bash`图标.

2. 打开`PowerShell`,

如果你还没有下载 Github 上的目标代码仓库，可以在打开的命令行中输入:

```
git clone [笔记的 GitHub 仓库地址]
cd [笔记本地位置]
```

3. 使用方法

下载 `Start-GitAutoCommit.ps1` 脚本，并在命令行输入

```powershell
.\Start-GitAutoCommit.ps1
```

更多用法：

```powershell
Start-GitAutoCommit # 将当前脚本所在的文件夹作为git文件夹,只自动本地提交(commit)，不推送(push)到Github.
Start-GitAutoCommit -d /path/to/your/note's/dir    # 设置目标文件夹
Start-GitAutoCommit -p                             # 自动提交并推送到Github上
Start-GitAutoCommit -s origin -p                   # 设置远程服务器地址
Start-GitAutoCommit -b main -p                     # 设置git的分支
Start-GitAutoCommit -i 30 -p                       # 设置更新间隔时常
Start-GitAutoCommit -o -p                          # 只执行一次
```

## License

Copyright © 2020 Michael Wong

Distributed under the MIT License.




