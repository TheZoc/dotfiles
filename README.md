TheZoc's Dotfiles
=================

These are my personal dotfiles, managed using [homesick][1]
They are tested and work fine in MacOS X 10.10.3.
In future, I might try this in Debian or some other Linux distro and see how they behave.

## How to Install

Steps:

1) Install homesick

2) Install dotfiles

### Installing Homesick

Install ```rbenv```.
A simple and short way to do that with homebrew is:

```
brew install rbenv
brew install ruby-build
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
```

Then use:

```
rbenv install -l
```

To see the available ruby versions. At the time of this writing, the latest stable version is 2.3.1.
Then, install it:

```
rbenv install 2.3.1
```

You now can see the installed Ruby versions and which version is active by running:

```
rbenv versions
```

Now you just need to activate the version you just installed. In this example, it's version 2.3.1.

```
rbenv global 2.3.1
```


And install homesick:

```
gem install homesick
```

And finally do a rehash:

```
rbenv rehash
```

Also, don't forget to add:

```
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
```

to your shell rc (.bashrc/.zshrc) file!

### Installing dotfiles

Run the command:

```
homesick clone https://github.com/TheZoc/dotfiles.git
```

This will download this dotfiles to your user directory. Now you need to link them:

```
homesick cd
homesick link
```

And you're done!

You might wanto to check .install_zsh and .brew scripts on your home folder ;)

## File structure

There are some utilities in utils folder. That folder should never be linked to home directory, since should be used for setup and maintenance only.

There are two files in home directory that can't be moved inside .config folder. They are:

#### .bash_profile

This file 'sources' all files inside .config/bash. They contain aliases, prompt definition and exports to help with bash.
Bash isn't my main shell anymore - I've adopted zsh - but whenever I don't have zsh available, this is a reasonable fallback.

#### .vimrc

My personal setup of vim and the set of plugins I use.


#### .config/git/*

Some basic configurations for git and a global gitignore file.

## Extra help

There's a bunch of people that work hard for dotfiles improvement and refinement. [You can check them out here][2]!

[1]: https://github.com/technicalpickles/homesick
[2]: http://dotfiles.github.io/
