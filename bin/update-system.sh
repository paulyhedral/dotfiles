#!/bin/bash -x

dbdir="$HOME/Documents"
datadir="$dbdir/Homedir"
system=$(hostname -s | tr "[:upper:]" "[:lower:]")

pushd $datadir

#brew upgrade
#brew unlink tfenv
topgrade -c --no-retry --disable system --disable github_cli_extensions --disable containers --disable yadm
#brew cask upgrade
brew cleanup
# brew list | fold > brew-recipes-$system.txt
# brew cask list | fold > brew-cask-recipes-$system.txt
#brew link tfenv
brew bundle dump --global -f
cp ~/.Brewfile .
yadm add .Brewfile ~/.Brewfile
yadm commit -m "Updated .Brewfile"
yadm push
#sudo gem update -N
#sudo gem list --local | awk '{print $1}' > gem-list-$system.txt
mas list >mas-applications-$system.txt
#code --list-extensions > vscode-extensions-$system.txt
code-insiders --list-extensions >vscode-insiders-extensions-$system.txt
#cp -Rpv ~/.oh-my-zsh dot-oh-my-zsh-$system
cp -Rpv ~/.gitconfig dot-gitconfig-$system
cp -Rpv ~/.zshrc dot-zshrc-$system

for tl in $(ls -1d /usr/local/texlive/????); do
    $tl/bin/*-darwin/tlmgr update --self
    $tl/bin/*-darwin/tlmgr update --all
done

sudo softwareupdate -d -i -a -R

popd
