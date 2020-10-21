#!/usr/bin/env bash

alias j8="export JAVA_HOME=${JAVA8_HOME}"
alias j11="export JAVA_HOME=${JAVA11_HOME}"
alias jex="export JAVA_HOME=${JAVAEX_HOME}"

alias idea='cd ~/IdeaProjects'

alias e80="echo 'rdr pass inet proto tcp from any to any port 80 -> 127.0.0.1 port 8181' | sudo pfctl -ef -"

alias docker-ps='docker ps -a'
alias docker-stop='docker stop $(docker ps -a -q)'
alias docker-rm='docker rm $(docker ps -a -q)'
alias docker-image-rm='docker rmi $(docker images -a -q)'

alias tc='cd ${TOMCAT_HOME}'
alias tcb='cd ${TOMCAT_HOME}/bin'
alias tcl='cd ${TOMCAT_HOME}/logs'

alias pst='ps -ef|grep tomcat'
alias tcc='cd ${TOMCAT_HOME}/logs;tail -f catalina.out'

alias ll='ls -la'
alias mdp='mkdir -pv'

alias ff='find . -type f -name'
alias fd='find . -type d -name'

alias c='clear'
alias cl='clear;ls'

alias tarc="tar czvf"
alias tarx="tar xzvf"
alias tart="tar tzvf"

alias df='df -h'
alias du='du -h'

alias reload="source ~/.bash_profile"

alias brew-services="brew services list"
alias brew-pull="cd $(brew --prefix)/Homebrew && git fetch && git reset --hard origin/master"
alias brew-upgrade="brew upgrade;brew cleanup -s"
alias brew-cache="rm -rvf $(brew --cache)"

alias ajn="${ANACONDA_HOME}/bin/jupyter-notebook"

alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES;killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO;killall Finder /System/Library/CoreServices/Finder.app'

alias minikube-start="minikube start"
alias minikube-stop="minikube stop"
alias minikube-status="minikube status"
alias minikube-dashboard="minikube dashboard"

alias tomcat-start="brew services start tomcat"
alias tomcat-stop="brew services stop tomcat"

alias dfs-start="${HADOOP_HOME}/sbin/start-dfs.sh"
alias dfs-stop="${HADOOP_HOME}/sbin/stop-dfs.sh"

alias yarn-start="${HADOOP_HOME}/sbin/start-yarn.sh"
alias yarn-stop="${HADOOP_HOME}/sbin/stop-yarn.sh"

alias hadoop-start="${HADOOP_HOME}/sbin/start-dfs.sh;${HADOOP_HOME}/sbin/start-yarn.sh"
alias hadoop-stop="${HADOOP_HOME}/sbin/stop-yarn.sh;${HADOOP_HOME}/sbin/stop-dfs.sh"

alias postgres-start="brew services start postgres"
alias postgres-stop="brew services stop postgres"

alias mysql-start="brew services start mysql"
alias mysql-stop="brew services stop mysql"

alias es-start="brew services start elasticsearch"
alias es-stop="brew services stop elasticsearch"

alias kibana-start="brew services start kibana"
alias kibana-stop="brew services stop kibana"

alias mongodb-start="brew services start mongodb-community"
alias mongodb-stop="brew services stop mongodb-community"

alias neo4j-start="brew services start neo4j"
alias neo4j-stop="brew services stop neo4j"

alias cassandra-start="brew services start cassandra"
alias cassandra-stop="brew services stop cassandra"

alias zookeeper-start="brew services start zookeeper"
alias zookeeper-stop="brew services stop zookeeper"

alias kafka-start="brew services start kafka"
alias kafka-stop="brew services stop kafka"

alias solr-start="brew services start solr"
alias solr-stop="brew services stop solr"
