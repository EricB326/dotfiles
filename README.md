[![Typing SVG](https://readme-typing-svg.demolab.com?font=VT323&size=40&pause=1000&color=15FF00&width=435&lines=eric's+%2Fdotfiles)](https://git.io/typing-svg)

<img src="https://github.com/EricB327/dotfiles/blob/master/images/full_desktop_one.png" style="width:50%"><img src="https://github.com/EricB326/dotfiles/blob/master/images/full_desktop_two.png" style="width:50%">

> [!WARNING]
> These dotfiles are currently in a deep w.i.p phase.

# Dotfiles Introduction

This repository contains the dotfiles I use across my Linux (and to some extent WSL) systems. I built these dotfiles with development on a laptop in mind. My goal was to maintain a minimal lightweight environment whilst also learning the what things could be done when ricing a system. My environment that I built these dotfiles on is a laptop running Arch utilising Hyprland as a Wayland compositor. The requirements and instructions for these dotfiles are outlined below.

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

