#!/usr/bin/env bash

brew tap homebrew/cask-cask
brew tap homebrew/services
brew tap mongodb/brew

#brew install bash
#echo /usr/local/bin/bash >> /etc/shells
#chsh -s /usr/local/bin/bash
#brew install bash-completion@2

brew install dos2unix
brew install wget
brew install lftp
brew install curl
brew install tree

brew install node

brew install python@2
brew install python
brew install pyenv

brew install perl
brew install vim

brew install pyenv
brew install pyenv-virtualenv

#ln -s $(brew --cellar python)/3.7.6_1 $HOME/.pyenv/versions/brew-python-3.7.6; 
#ln -s $(brew --cellar python@2)/2.7.17_1 $HOME/.pyenv/versions/brew-python-2.7.17;

#######################
#brew install coreutils
#brew install findutils
#brew install gnu-sed
#brew install gnu-tar
#brew install gawk
#brew install gnu-which
#brew install grep
######################

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

brew install r

brew install mongodb-community
brew install neo4j
brew install cassandra
brew install solr

brew install zookeeper
brew install kafka

brew install jq

brew install serverless

brew install terraform
brew install ansible
brew isntall packer

#Cask installs
brew cask install java
brew cask install postman
brew cask install insomnia
brew cask install sourcetree
brew cask install textmate
brew cask install devcenter
brew cask install google-chrome
brew cask install the-unarchiver

brew cask install intellij-idea
brew cask install datagrip

brew cask install kubernetic
brew cask install cyberduck
brew cask install robo-3t

brew cask install docker (aka Docker Desktop)
brew cask install virtualbox

#Docker and completion scripts
brew install docker
brew install docker-compose
brew install docker-machine (not included with Docker Desktop)
brew install docker-credential-helper-ecr (included with Docker Desktop)

brew install kubernetes-cli	
brew install minikube
brew install helm
brew install helm@2
brew install circleci

brew install kubectx
brew install kube-ps1
brew install stern

brew install youtube-dl
