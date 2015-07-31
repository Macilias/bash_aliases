export PS1="\u@\h/\W \t$ "

# Alias definitions:
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

#SWITCHABLE EXPORTS ARE IN .bash_aliases

export EDITOR=/Applications/TextMate.app/Contents/MacOS/TextMate
export SCALA_HOME=/Users/niemc/Programming/environment/scala-2.10.1
export PLAY_HOME=/Users/niemc/Programming/environment/play-2.1.0
export DOTCMS_HOME=/Users/niemc/Programming/dotCMS

export JAVA_HOME=$JDK_HOME
export GRADLE_HOME=/Users/niemc/Programming/environment/gradle-2.4/bin
export JDK18=/Library/Java/JavaVirtualMachines/jdk1.8.0_45.jdk/Contents/Home
export SUBVERSION_HOME=/opt/subversion

export DYLD_LIBRARY_PATH=/Users/niemc/Programming/environment/instantclient/instantclient_11_2_64
export NLS_LANG=GERMAN_GERMANY.WE8ISO8859P1
#config of oracle client taken from https://docs.oracle.com/cd/E11882_01/install.112/e38228/post_inst_task.htm#CHDHHJHH
export ORACLE_HOME=/Users/niemc/Programming/environment/instantclient
export TNS_ADMIN=$ORACLE_HOME/network/admin
export TWO_TASK=$ORACLE_HOME/network/admin

export EDITOR="/usr/local/bin/mate -w"
export PROMPT_COMMAND='echo -ne "\033]0;${PWD}\007"'

#PATH EXPORTS
export PATH=$JAVA_HOME/bin
export PATH=$PATH:$M2_HOME/bin
export PATH=$PATH:$SUBVERSION_HOME/bin
export PATH=$PATH:$GRADLE_HOME
export PATH=$PATH:$DYLD_LIBRARY_PATH

# MacPorts Installer addition on 2013-04-04_at_09:32:33: adding an appropriate PATH variable for use with MacPorts.
export PATH=$PATH:/opt/local/bin:/opt/local/sbin

export PATH=$PATH:/opt/local/bin:/opt/local/sbin:/opt/local/bin:/opt/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/X11/bin

#export PATH=$PATH:$SCALA_HOME/bin:$SCALA_HOME:$PLAY_HOME

# Colors
# Make ls use colors
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad
# define colors
C_DEFAULT="\[\033[m\]"
C_WHITE="\[\033[1m\]"
C_BLACK="\[\033[30m\]"
C_RED="\[\033[31m\]"
C_GREEN="\[\033[32m\]"
C_YELLOW="\[\033[33m\]"
C_BLUE="\[\033[34m\]"
C_PURPLE="\[\033[35m\]"
C_CYAN="\[\033[36m\]"
C_LIGHTGRAY="\[\033[37m\]"
C_DARKGRAY="\[\033[1;30m\]"
C_LIGHTRED="\[\033[1;31m\]"
C_LIGHTGREEN="\[\033[1;32m\]"
C_LIGHTYELLOW="\[\033[1;33m\]"
C_LIGHTBLUE="\[\033[1;34m\]"
C_LIGHTPURPLE="\[\033[1;35m\]"
C_LIGHTCYAN="\[\033[1;36m\]"
C_BG_BLACK="\[\033[40m\]"
C_BG_RED="\[\033[41m\]"
C_BG_GREEN="\[\033[42m\]"
C_BG_YELLOW="\[\033[43m\]"
C_BG_BLUE="\[\033[44m\]"
C_BG_PURPLE="\[\033[45m\]"
C_BG_CYAN="\[\033[46m\]"
C_BG_LIGHTGRAY="\[\033[47m\]"
# set your prompt
export PS1="\n$C_LIGHTGREEN\u$C_DARKGRAY@$C_BLUE\h $C_DARKGRAY: $C_LIGHTYELLOW\w\n$C_DARKGRAY\$$C_DEFAULT "
