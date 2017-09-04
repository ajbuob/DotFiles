#!/usr/bin/env bash

alias idea='cd ~/IdeaProjects'

alias ls='ls -la'
alias mkdir='mkdir -pv'

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
alias brew-upgrade="brew upgrade;brew cleanup"

alias tomcat-start='$TOMCAT_HOME/bin/startup.sh'
alias tomcat-stop='$TOMCAT_HOME/bin/shutdown.sh'

alias dfs-start="$HADOOP_HOME/sbin/start-dfs.sh"
alias dfs-stop="$HADOOP_HOME/sbin/stop-dfs.sh"

alias yarn-start="$HADOOP_HOME/sbin/start-yarn.sh"
alias yarn-stop="$HADOOP_HOME/sbin/stop-yarn.sh"

alias hadoop-start="$HADOOP_HOME/sbin/start-dfs.sh;$HADOOP_HOME/sbin/start-yarn.sh"
alias hadoop-stop="$HADOOP_HOME/sbin/stop-yarn.sh;$HADOOP_HOME/sbin/stop-dfs.sh"

alias postgres-start="brew services start postgres"
alias postgres-stop="brew services stop postgres"

alias mysql-start="brew services start mysql"
alias mysql-stop="brew services stop mysql"

alias es-start="brew services start elasticsearch"
alias es-stop="brew services stop elasticsearch"

alias kibana-start="brew services start kibana"
alias kibana-stop="brew services stop kibana"

alias mongodb-start="brew services start mongodb"
alias mongodb-stop="brew services stop mongodb"

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