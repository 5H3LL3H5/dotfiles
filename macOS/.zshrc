# ------------------------------------------------------------
#                         oh-my-zsh
# ------------------------------------------------------------
export TERM='xterm-256color'
export LANG=en_GB.UTF-8
export EDITOR="$(which vim)"
export ZSH="$HOME/.oh-my-zsh"
export DOTFILES="$HOME/workspace/dotfiles/macOS"
export SSH_KEY_PATH="~/.ssh/dsa_id"
. /usr/local/etc/profile.d/z.sh

HIST_STAMPS="dd/mm/yyyy"
HISTSIZE=500
SAVEHIST=500
DISABLE_AUTO_TITLE=true

source $HOME/.env
source $HOME/.zshrc.plugins
# source $HOME/.zsh.theme
source $ZSH/oh-my-zsh.sh

# ------------------------------------------------------------
#                         Aliases
# ------------------------------------------------------------

source $HOME/.aliases

# ------------------------------------------------------------
#                        ENV VARIABLES
# ------------------------------------------------------------

source $HOME/.env

# ------------------------------------------------------------
#                      User Configuration
# ------------------------------------------------------------

bindkey "\e\eOD" backward-word
bindkey "\e\eOC" forward-word

# Local provision file for zsh
source $HOME/.zshrc.local

# Do not share history between tmux windows
setopt noincappendhistory
setopt nosharehistory

# rbenv
eval "$(rbenv init - --no-rehash)"

# . /usr/local/opt/asdf/asdf.sh
export JAVA_HOME=`/usr/libexec/java_home -v 1.8`

# starship prompt
eval "$(starship init zsh)"
