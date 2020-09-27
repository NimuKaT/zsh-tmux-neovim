# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
# if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
#   source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
# fi

# The following lines were added by compinstall

zstyle ':completion:*' completer _complete _ignored
zstyle :compinstall filename '/home/imukat/.zshrc'

autoload -Uz compinit
zstyle ':completion"*' menu select
zmodload zsh/complist
compinit

# Use vim keys in tab complete menu:
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -v '^?' backward-delete-char



# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
# End of lines configured by zsh-newuser-install

# Add standard bash varaibles 
HOSTNAME=$(hostname)

# Soucre bashrc
source ~/.bashalias

# Enable keychain

if [ -z $SSH_AGENT_PID ] 
then
    eval $(ssh-agent) > /dev/null
fi

# Add themes
fpath+=$HOME/.zsh/themes/pure
fpath+=$HOME/.zsh/themes/setup

# Spaceship theme configuration
SPACESHIP_TIME_SHOW=true
SPACESHIP_EXIT_CODE_SHOW=true

autoload -U promptinit; promptinit
prompt spaceship 


#source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
#source ~/.zsh/powerlevel10k/powerlevel10k.zsh-theme
#POWERLEVEL9K_DISABLE_CONFIGURATION_WIZARD=true

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
#[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
