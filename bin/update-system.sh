#!/bin/bash -x

dbdir="$HOME/Dropbox"
datadir="$dbdir/Homedir"
system=$(hostname -s | tr "[:upper:]" "[:lower:]")

pushd $datadir

#brew upgrade
topgrade -c --no-retry -y --disable go system
#brew cask upgrade
brew cleanup
# brew list | fold > brew-recipes-$system.txt
# brew cask list | fold > brew-cask-recipes-$system.txt
brew bundle dump --global -f
cp ~/.Brewfile .
yadm add .Brewfile
#sudo gem update -N
sudo gem list --local | awk '{print $1}' > gem-list-$system.txt
mas list > mas-applications-$system.txt
code --list-extensions > vscode-extensions-$system.txt
code-insiders --list-extensions > vscode-insiders-extensions-$system.txt
#cp -Rpv ~/.oh-my-zsh dot-oh-my-zsh-$system
cp -Rpv ~/.gitconfig dot-gitconfig-$system
cp -Rpv ~/.zshrc dot-zshrc-$system

for tl in $(ls -1d /usr/local/texlive/????); do
    $tl/bin/x86_64-darwin/tlmgr update --self
    $tl/bin/x86_64-darwin/tlmgr update --all
done

sudo softwareupdate -d -i -a -R

popd
