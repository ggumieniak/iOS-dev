* Add missing branches from origin (source: https://stackoverflow.com/questions/11623862/fetch-in-git-doesnt-get-all-branches)
```
$ git config --get remote.origin.fetch
+refs/heads/master:refs/remotes/origin/master

As you can see, in my case, the remote was set to fetch the master branch specifically and only. I fixed it as per below, including the second command to check the results.

$ git config remote.origin.fetch "+refs/heads/*:refs/remotes/origin/*"
$ git config --get remote.origin.fetch
+refs/heads/*:refs/remotes/origin/*
```
