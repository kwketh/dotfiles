# dotfiles

Personal shell config files.

### Manual installation

```
cd ~    
git init .
git remote add origin https://github.com/kwketh/dotfiles.git
git fetch && git checkout master
make
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

## Inspiration and special thanks to
 - <https://github.com/posva/dotfiles> for `bin/catimg`

## License
The MIT License (MIT)

Copyright (c) 2014-2015 Konrad Wieczorek

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.

