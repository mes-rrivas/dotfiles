export PATH="$PATH:/usr/lib/dotnet"
export PATH="$PATH:/home/rrivas/.dotnet/tools"
export PATH="$PATH:/opt/nvim-linux64/bin"
export DOTNET_ROOT="/usr/lib/dotnet"
export PATH="$PATH:/opt/mssql-tools/bin"

if [ -f $HOME/.bashrc ]; then
        source $HOME/.bashrc
fi

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

. ~/prompt-colors.sh
. ~/git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=1
export PS1='\[\033[1;32m\]\u@\h \[\033[1;34m\]\w\[\033[0m\]$(__git_ps1 " (\[\033[1;35m\]%s\[\033[0m\])")\$ '


if [ -f "/tmp/krb5cc_$(id -u)" ]; then
    kinit -R
fi
