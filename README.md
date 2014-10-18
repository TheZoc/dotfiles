TheZoc's Dotfiles
=================

These are my personal dotfiles. Thanks Robert Curth for his [original idea and instructions][1].
They are tested and work fine in MacOS X 10.9.1
In future, I might try this in Debian and see how they behave.

## How to Install

Steps:
1) Install homesick
2) Install dotfiles

### Installing Homesick

#### Recommended method

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

To see the available ruby versions. At the time of this writing, the latest stable version is 2.1.3.
Then, install it:

```
rbenv install 2.1.3
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

#### Simple and *not* recommended method

Install homesick with the command:

```
sudo gem install homesick
```

This is not recommended as it will install as root user and it's possible to create potential security issues.

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

## Files

A lot has changed lately. This list will be updated soon.

#### .aliases

This file checks for which kind of ```ls``` is in use (GNU or MacOS X standard). This ensures portability.
Also, after the checking is done, it adds some color flavors to the output.

#### .bash_profile

This file is responsible for calling all the linked scripts upon bash execution.

#### .bash_prompt

This one was copied from [Robert Curth repository][2]. I'm liking it so far.

#### .exports

Most of it's content was copied from [Robert Curth repository][2] too. I'm still experimenting with some stuff.

#### .gemrc

I've had so much headache trying to update gem (specially for nokogiri package) that I decided to disable it's automatic generation.
This seems to fix my problem.
Also, I'm not a ruby developer - but if I ever need help with documentation, I'll probably search online :)

#### .gitconfig

I'm still working my way to get used to git. This is just a basic setup to work with GitHub.

## Extra help

There's a bunch of people that work hard for dotfiles improvement and refinement. [You can check them out here][3]!

[1]: https://mug.im/blog/2013/01/22/manage-and-share-your-dotfiles-with-homesick/
[2]: https://github.com/shostakovich/dotfiles
[3]: http://dotfiles.github.io/
