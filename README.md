# dotfiles

Personal shell config files.

### Manual installation

```
cd ~    
git init .
git remote add origin https://github.com/kwketh/dotfiles.git
git fetch
git reset origin/master
```

### Installation via Docker (builds image)

```
git clone https://github.com/kwketh/dotfiles.git
cd dotfiles/
make build
```

and to enter the dev environment (while boot2docker is running):
```
$ ./dev-env.sh
root@dev-env ~ $
```

### Alternative way via Docker (downloads image)

```
docker pull kwketh/docker-dev-env
```

and to enter zsh:
```
$ docker run -h dev-env --rm -it -w "/root" kwketh/docker-dev-env:latest
root@dev-env ~ $ 
```

