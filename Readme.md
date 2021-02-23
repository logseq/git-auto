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

## License

Copyright © 2020 Michael Wong

Distributed under the MIT License.




