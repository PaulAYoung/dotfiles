# Dotfiles

These are my dotfiles to configure various things on my computer. I use [gnu stow](http://brandon.invergo.net/news/2012-05-26-using-gnu-stow-to-manage-your-dotfiles.html) to link these configurations into my home directory. 

To use this config, clone this repo into your home directory, make sure you have stow installed. Then from the dotfiles directory just run `stow config` with config being the folder who's config you want to copy. ie `stow vim` will link the vim folder's contents into your home directory. 

To prevent some files and directories from being added to the repo I created a .git ignore file under t_keepdir. This .gitignore tells git to ignore everything under the directory except the .gitignore file itself. This is useful to prevent things like all my installed npm modules or vim plugins from being pulled into the repository. 
