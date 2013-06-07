#Reload this file:
alias bash='source ~/.bash_profile'

#Java env:
export MAVEN_OPTS='-Xms256m -Xmx1024m -XX:PermSize=256m -XX:MaxPermSize=768m -XX:ReservedCodeCacheSize=256m'
export JAVA_OPTS='-Xms256m -Xmx1024m -XX:PermSize=256m -XX:MaxPermSize=768m -XX:ReservedCodeCacheSize=256m -ea -Djava.net.preferIPv4Stack=true'
export JPDA_ADDRESS=8000
export JPDA_TRANSPORT=dt_socket

#GLOBAL ALIASES
alias ll='ls -lFG'
alias cd..='cd ..'
alias p='pwd'
alias kk='ll'
alias kk+='ll'
alias öö='ll'
alias lll='ll'
alias wget='curl -C --O'
alias edit='/Applications/TextMate.app/Contents/MacOS/TextMate'
export EDITOR='/Applications/TextMate.app/Contents/MacOS/TextMate'

#show hiden files:
alias shf='defaults write com.apple.finder AppleShowAllFiles TRUE;killall Finder'
#hide hiden files:
alias hhf='defaults write com.apple.finder AppleShowAllFiles FALSE;killall Finder'

#SEEK & DESTROY
function findThatFile() { find . -name "$1"; }
function findInThatFile() { find . -name "$1" -exec grep -H $2 {} \; ;}
function findInAllFiles() { find . -type f -exec grep -H $1 {} \; ;} 
function removeThouseFiles() { find . -name "$1" -print0 | xargs -0 rm;}
function removeThouseFolders() { find . -name "$1" -print0 | xargs -0 rm -r;}
function showMacOsxTempFiles() { find . -name '._*' -type f; }
function removeMacOsxTempFiles() { find . -name '._*' -type f -delete; }

alias ftf='findThatFile'
alias fia='findInAllFiles'
alias fif='findInThatFile'
alias rmtf='removeThouseFiles'
alias rmtfr='removeThouseFolders'
alias rmmac='removeMacOsxTempFiles'