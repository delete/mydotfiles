# macOS scripts

Install packges with `install.sh`

`$ chmod +x install.sh && ./install.sh`

zsh packages:


- [oh-my-zsh](https://github.com/ohmyzsh/ohmyzsh/#basic-installation)

if you get some permission error when installing oh-my-zsh, try

`$ compaudit | xargs chmod g-w,o-w /usr/local/share/zsh`

`$ compaudit | xargs chmod g-w,o-w /usr/local/share/zsh/site-functions`

- [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md#oh-my-zsh)