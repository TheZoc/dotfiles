TheZoc's Dotfiles
=================

These are my personal dotfiles. Thanks Robert Curth for his [original idea and instructions][1].
They are tested and work fine in MacOS X 10.9.1
In future, I might try this in Debian and see how they behave.

## How to Install

To use these, either refer to the original post, or simply install homesick with the command:

```
sudo gem install homesick
```

## Files

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
