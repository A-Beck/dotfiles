# Dotfiles

Version control my dotfiles with GNU [Stow](http://www.gnu.org/software/stow/)

See this [post](http://brandon.invergo.net/news/2012-05-26-using-gnu-stow-to-manage-your-dotfiles.html)

### `.ssh/config`

I decided to include this file. This means that before running `stow` in your dotfile directory, please back it. you can include this backup by having the backup name be 'ssh_config'

### `.gitconfig`

I decided to add the global gitconfig. This can cause issues if you have repositories that you use different email addrs for on different machines. I excluded global email configuration, which can get annoying. Have a branch for each machine that adds it back in.
