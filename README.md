# Dotfiles Introduction

This repository contains the dotfiles I use across my systems. The requirements and instructions for these dotfiles are outlined below.

## Requirements

Ensure you have the following installed on your system using your preferred installation method. I will outline how to install each requirement using Arch Linux's package manager, pacman.

### Git

```
pacman -S git
```

### Stow

```
pacman -S stow
```

## Optional Packages

These are the different packages that you could install which will make use of the respective configs in this repo. Again, install what you want using your preferred installation method.

### Neovim

```
pacman -S neovim
```

### Starship

```
pacman -S starship
```

### Fish

```
pacman -S fish
```

### Vim

```
pacman -S vim
```

## Installation

First, check out the dotfiles reop into you $HOME directory using git.

```
$ git clone git@github.com/ericb326/dotfiles.git
$ cd dotfiles
```

Then, using GNU stow, create the symlinks.

```
$ stow .
```

