#!/usr/bin/env bash

brew tap caskroom/cask
brew tap homebrew/services

#brew install bash
#echo /usr/local/bin/bash >> /etc/shells
#chsh -s /usr/local/bin/bash

brew install dos2unix
brew install wget
brew install lftp
#brew install curl

brew install python
brew install perl
brew install vim

#brew install coreutils
#brew install findutils
#brew install gnu-sed
#brew install gnu-tar
#brew install gawk
#brew install gnu-which
#brew install grep

brew install git
brew install subversion

brew install awscli

brew install ant
brew install maven
brew install maven-completion

brew install tomcat

brew install mysql
brew install postgresql

brew install hadoop
brew install hive
brew install pig
brew install apache-spark

brew install elasticsearch
brew install kibana

brew install mobgodb
brew install neo4j
brew install cassandra
brew install solr

brew install zookeeper
brew install kafka

brew install jq

brew install terraform
brew install ansible

#Cask installs
brew cask install java
brew cask install postman
brew cask install sourcetree
brew cask install textmate
brew cask install devcenter
brew cask install google-chrome
brew cask install the-unarchiver

brew cask install intellij-idea
brew cask install datagrip

brew cask install docker-toolbox
brew cask install virtualbox
brew cask install kitematic

#Completion
brew install bash-completion@2
brew install docker-completion
brew install docker-compose-completion
brew install docker-machine-completion
