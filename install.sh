[[ -d "$HOME/.bak" ]] || mkdir $HOME/.bak

mv ~/.gitconfig ~/.bak/gitconfig
mv ~/.gitattributes ~/.bak/gitattributes
mv ~/.bash_profile ~/.bak/bash_profile
mv ~/.inputrc ~/.bak/inputrc
mv ~/.zshrc ~/.bak/zshrc

ZSHRC=$HOME/.dotfiles/oh-my-zsh/zshrc
GIT_ATTR=$HOME/.dotfiles/git/gitattributes
GIT_CFG=$HOME/Dropbox/Data/Git/gitconfig
BASH_HOME=$HOME/.dotfiles/bash
BASH_PROFILE=$BASH_HOME/bash_profile

[[ -a "$ZSHRC" ]]             && ln -s $ZSHRC             $HOME/.zshrc
[[ -a "$BASH_PROFILE" ]]      && ln -s $BASH_PROFILE      $HOME/.bash_profile
[[ -a "$GIT_ATTR" ]]          && ln -s $GIT_ATTR          $HOME/.gitattributes
[[ -a "$GIT_CFG" ]]           && ln -s $GIT_CFG           $HOME/.gitconfig
[[ -a "$BASH_HOME/inputrc" ]] && ln -s $BASH_HOME/inputrc $HOME/.inputrc
