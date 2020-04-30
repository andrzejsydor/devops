## Stop all containers at once

### In Git Bash or Bash for Windows you can use this Linux command:

```
docker stop $(docker ps -q)
```

### For PowerShell, the command is very similar to the Linux one:

```
docker ps -q | % { docker stop $_ }
```
