# NeovimConfig

This repository contains the configurations I utilize in order to achieve a satisfactory workflow when using
**Neovim**. It has various plugs that, for instance, make file exploration easier and integrate conveniences like
recommendations and auto-fill for brackets. The configuration is made using the programming language **Lua**.

![Neovim](https://img.shields.io/badge/NeoVim-%2357A143.svg?&style=for-the-badge&logo=neovim&logoColor=white)
![Lua](https://img.shields.io/badge/lua-%232C2D72.svg?style=for-the-badge&logo=lua&logoColor=white)

[![License: GPL v3](https://img.shields.io/badge/License-GPLv3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0)

📚 Dependencies
---
![NodeJS](https://img.shields.io/badge/node.js-6DA55F?style=for-the-badge&logo=node.js&logoColor=white)
![Git](https://img.shields.io/badge/git-%23F05033.svg?style=for-the-badge&logo=git&logoColor=white)

If you do not have **Neovim** installed, it is best to build from source in order to assure is it of a version
compatible with all the plugins in the configuration.

Make sure you also have **Git** installed, as it makes the installation process more convenient.

> Debian-based Linux distros: `sudo apt install git`

> Arch-based Linux distros: `sudo pacman -S git`

**NodeJS** is required for the coc plug. This plug is responsible for the suggestions while programming. **Git** is
used to clone **Packer**, which is used for managing the plugs.

Installation of **NodeJS** is highly recommended by following
[THIS GUIDE](https://learn.microsoft.com/en-us/windows/dev-environment/javascript/nodejs-on-wsl)

> Clone Packer using Git.
```shell
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```


🚀 Running the program
---
> Use Git to clone this repository
```shell
git clone https://github.com/CaptainCluster/NeovimConfig/
```
Now that you have all the dependencies installed, move the configuration files to `.config/nvim/` directory. After
this, enter the `init.lua` file with Neovim: `nvim init.lua`. Enter the command-line mode and type `:PackerInstall`
to have all the dependencies installed. After all the work, you should finally be able to use the configurations!

If you end up altering any of the plugs, make sure you enter command-line mode and type `:PackerSync` in order to 
apply the changes.
