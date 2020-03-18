#!/usr/bin/env bash

#Source all the modules
for file in ~/.bash_{exports,aliases,functions}; do
	[ -r "${file}" ] && [ -f "${file}" ] && source "${file}";
done
unset file

#Load main bash completion
if [ -f /usr/local/share/bash-completion/bash_completion ]; then
    source /usr/local/share/bash-completion/bash_completion
fi

#Load brew bash completion
for file in $(brew --prefix)/etc/bash_completion.d/*
do
   [ -r "${file}" ] && [ -f "${file}" ] && source "${file}";
done
unset file

#/usr/local/sbin added for homebrew installs
export PATH=/usr/local/sbin:~/bin:${PATH}
#export PATH=${ANACONDA_HOME}/bin:${PATH}
export PATH=${PYENV_ROOT}/bin:$PATH

# pyenv configuration
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi
# pyenv-virtualenv configuration
if which pyenv-virtualenv-init > /dev/null; then eval "$(pyenv virtualenv-init -)"; fi

#Add Helm to the path base on the enrionment variable
export PATH=${HELM_HOME}/bin:$PATH

echo "PATH: ${PATH}"

#create default machine
#docker-machine create --driver virtualbox default

# Start/Configure Docker
DOCKER_RUNNING=$(docker-machine ls --format "{{.Name}}: {{.State}}" --filter name=default)
if [[ "${DOCKER_RUNNING}" == *"Stopped"* ]]; then
    docker-machine start default
    eval "$(docker-machine env default)"
    env | grep "DOCKER"
elif [[ "${DOCKER_RUNNING}" == *"Running"* ]]; then
    eval "$(docker-machine env default)"
    env | grep "DOCKER"
fi
