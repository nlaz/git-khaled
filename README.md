# git-khaled ![DJ KHALED](https://github.com/nlaz/git-khaled/blob/master/assets/khaled.png) 

Great commit messages are major key :key:. 

![Example](https://github.com/nlaz/git-khaled/blob/master/assets/example.jpg)

### Instructions
 Clone this repo
```
$ git clone https://github.com/nlaz/git-khaled.git
```
Add the `khaled` alias to `~/.gitconfig`
```
$ git config --global alias.khaled '!sh <path/to/project>/khaled.sh'
```

### Usage
Make your commits now with `git khaled` instead of `git commit`
```
$ git khaled [options] <MESSAGE>
```
##### Options
 - `--usage` -  Prints out helpful usage message
 - `-a`, `--all` - Automatically stages files that have been modified and deleted
 - `-q`, `--quotes` - Prints out all the possible commit patterns
 - `--one` - Sets commit message to 'ANOTHER ONE.'
 - `--lion` - Sets commit message to ':cat: LIIIIION!! :cat:'

### Suggestions
Suggestions are welcome! Reach out to me at [@nikolazaris](https://twitter.com/nikolazaris) with any suggestions, ideas, or complaints.