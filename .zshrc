# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

plugins=(osx)

# zsh-completions
# git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/zsh-completions
plugins+=(zsh-completions)
# zsh-syntax-highlighting
# git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
plugins+=(zsh-syntax-highlighting)
autoload -U compinit && compinit

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="robbyrussell"
#ZSH_THEME="agnoster"
ZSH_THEME="pmcgee"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins+=(git)

# User configuration

# Fix python crash with vim and YCM plugin
export DYLD_FORCE_FLAT_NAMESPACE=1

#export PATH=$HOME/bin:/usr/local/bin:$PATH
#export PATH="/usr/local/bin:/usr/local/sbin:/usr/local/boost:$PATH"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

alias ptt='ssh bbsu@140.112.172.11'
alias ptt2='ssh bbsu@ptt2.cc'

alias ws1='ssh -p 443 b01902037@linux1.csie.org'
alias ws2='ssh b01902037@linux2.csie.org'
alias ws3='ssh b01902037@linux3.csie.org'
alias ws4='ssh b01902037@linux4.csie.org'
alias ws5='ssh b01902037@linux5.csie.org'
alias ws6='ssh b01902037@linux6.csie.org'
alias ws7='ssh b01902037@linux7.csie.org'
alias ws8='ssh b01902037@linux7.csie.org'
alias ws9='ssh b01902037@linux9.csie.org'
alias ws10='ssh b01902037@linux10.csie.org'
alias ws11='ssh b01902037@linux11.csie.org'
alias ws12='ssh b01902037@linux12.csie.org'
alias ws13='ssh b01902037@linux13.csie.org'
alias ws14='ssh b01902037@linux14.csie.org'
alias ws15='ssh b01902037@linux15.csie.org'
alias ws16='ssh b01902037@linux16.csie.org'
alias ws17='ssh b01902037@linux17.csie.org'
alias ws18='ssh b01902037@linux18.csie.org'

alias oa1='ssh b01902037@oasis1.csie.org'

alias optima='ssh myyang@optima.csie.ntu.edu.tw'
alias newton='ssh myyang@newton.csie.ntu.edu.tw'
alias schroeder='ssh myyang@schroeder.csie.ntu.edu.tw'
alias charlie='ssh myyang@charlie.csie.ntu.edu.tw'
alias solver='ssh myyang@solver.csie.ntu.edu.tw'
alias marcie='ssh myyang@marcie.csie.ntu.edu.tw'
alias peanuts='ssh myyang@peanuts.csie.ntu.edu.tw'
alias patty='ssh myyang@patty.csie.ntu.edu.tw'

alias euler='ssh meyang@euler.ethz.ch'
alias leonhard='ssh meyang@login.leonhard.ethz.ch'

alias davinci='ssh meyang@davinci.inf.ethz.ch'
alias cscs='ssh myang@ela.cscs.ch -t "zsh"'
alias ault='ssh ault -t "zsh"'

alias newton0='open vnc://newton.csie.ntu.edu.tw:5900'
alias newton1='open vnc://newton.csie.ntu.edu.tw:5901'
alias newton2='open vnc://newton.csie.ntu.edu.tw:5902'
alias newton3='open vnc://newton.csie.ntu.edu.tw:5903'
alias newton4='open vnc://newton.csie.ntu.edu.tw:5904'
alias newton5='open vnc://newton.csie.ntu.edu.tw:5905'
alias newton12='open vnc://newton.csie.ntu.edu.tw:5912'

alias mr='make run'

source ~/.bash_profile
