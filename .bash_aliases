#Reload this file:
alias bash='source ~/.bash_profile'

# Enable programmable completion features.
if [ -f /etc/bash_completion ]; then
    source /etc/bash_completion
fi

# SWITCHABLE EXPORTS
export JDK_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_45.jdk/Contents/Home
#export JDK_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_67.jdk/Contents/Home
#export JDK_HOME=/Library/Java/JavaVirtualMachines/jdk1.6.0_65.jdk/Contents/Home
export M2_HOME=/Users/niemc/Programming/environment/apache-maven-3.1.0
export GRADLE_HOME=/Users/niemc/Programming/environment/gradle-2.4/bin
export MAVEN_OPTS='-Xms1024M -Xmx2048M -XX:ReservedCodeCacheSize=256m -Dmaven.multiModuleProjectDirectory=$M2_HOME'
#export JAVA_OPTS='-Djava.net.preferIPv4Stack=true -Xdebug -d32'
export JAVA_OPTS='-Djava.net.preferIPv4Stack=true -Xdebug'
export JPDA_ADDRESS=8000
export JPDA_TRANSPORT=dt_socket
export LAUNCH_JBOSS_IN_BACKGROUND=0

#GLOBAL ALIASES
alias ll='ls -lFGa'
alias cd..='cd ..'
alias p='pwd'
alias kk='ll'
alias kk+='ll'
alias öö='ll'
alias lll='ll'
alias wget='curl -C --O'
alias count='find . -type f | wc -l'
alias edit='mate'
alias l='ls -lah'
alias eclipse='/Applications/Eclipse.app/Contents/MacOS/eclipse'
alias eclipse_online='cd ~/Programming/Eclipse/workspace_online; /Applications/Eclipse.app/Contents/MacOS/eclipse -data ~/Programming/Eclipse/workspace_online'
alias eclipse_batch='cd ~/Programming/Eclipse/workspace_batch; /Applications/Eclipse.app/Contents/MacOS/eclipse -data ~/Programming/Eclipse/workspace_batch'
alias eclipse_wf_batch='cd ~/Programming/Eclipse/workspace_wf_batch; /Applications/Eclipse.app/Contents/MacOS/eclipse -data ~/Programming/Eclipse/workspace_wf_batch'
alias eclipse_client='cd ~/Programming/Eclipse/workspace_client; /Applications/Eclipse.app/Contents/MacOS/eclipse -data ~/Programming/Eclipse/workspace_client'
alias eclipse_db='cd ~/Programming/Eclipse/workspace_db; /Applications/Eclipse.app/Contents/MacOS/eclipse -data ~/Programming/Eclipse/workspace_db'
alias eclipse_crm='cd ~/Programming/Eclipse/workspace_crm; /Applications/Eclipse.app/Contents/MacOS/eclipse -data ~/Programming/Eclipse/workspace_crm'
alias 2048='cd ~/Programming/privat/2048; mvn package exec:java'

alias jboss_online_dir='cd ~/Programming/Eclipse/workspace_crm/crm/online/jboss/bin;' 
alias jboss_online='cd ~/Programming/Eclipse/workspace_crm/crm/online/jboss/bin; ./run.sh -c online'
alias jboss_batch='cd ~/Programming/Eclipse/workspace_crm/crm/batch/jboss/bin; ./run.sh -c batch'
alias jboss_wf_batch='cd ~/Programming/Eclipse/workspace_crm/crm/batch_wf/wildfly/bin; ./run.sh -c batch'

alias psjboss='ps -ax | grep jboss'

#show hiden files:
alias shf='defaults write com.apple.finder AppleShowAllFiles TRUE;killall Finder'
#hide hiden files:
alias hhf='defaults write com.apple.finder AppleShowAllFiles FALSE;killall Finder'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

alias gitinspector='/Users/niemc/Programming/environment/gitinspector/gitinspector/gitinspector.py -wTHl .'

#COUNT
alias count='find . -type f | wc -l'

#SEEK & DESTROY
function findThatFile() { find . -name "$1"; }
function findInThatFile() { find . -name "$1" -exec grep -H $2 {} \; ;}
function findInAllFiles() { find . -type f -exec grep -H $1 {} \; ;} 
function removeThouseFiles() { find . -name "$1" -delete; }
#function removeThouseFilesOld() { find . -name "$1" -print0 | xargs -0 rm;}
#function removeThouseFolders() { find . -name "$1" -print0 | xargs -0 rm -r;}
#function showMacOsxTempFiles() { find . -name '._*' -type f; }
function removeMacOsxTempFiles() { find . -name '._*' -type f -delete; }
#function listAllFiles() { find . -type f; }
#function removeDoctype() { find . -type f -exec sed -i .bak '/DOCTYPE/d' {} \; ;}
								

alias ftf='findThatFile'
alias fia='findInAllFiles'
alias fif='findInThatFile'
alias rmtf='removeThouseFiles'
alias rmtfr='removeThouseFolders'
alias rmmac='removeMacOsxTempFiles'
#use 'rmtf *._*' to remove temp mac files

#MAVEN and IDEA aliases
alias mvnbuild='mvn clean install -o -Dmaven.test.skip=true'
alias mvnpack='mvn clean package -o -Dmaven.test.skip=true'
alias mvnrun='mvn jetty:run'
alias mvnexp='mvn jetty:run-exploded' 
