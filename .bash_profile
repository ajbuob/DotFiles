#!/usr/bin/env bash

#homebrew for Mac Silicon
export PATH=/opt/homebrew/bin:${PATH}

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
export PATH=${PATH}:/usr/local/sbin:~/bin
#export PATH=${ANACONDA_HOME}/bin:${PATH}
#export PATH=${PYENV_ROOT}/bin:$PATH

# pyenv configuration
#if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi
# pyenv-virtualenv configuration
#if which pyenv-virtualenv-init > /dev/null; then eval "$(pyenv virtualenv-init -)"; fi

# kubectx added to command prompt
if command -v kubectx &> /dev/null; then
	if ! [[ "$PS1" =~ ^\$\(kube_ps1\).* ]]; then
		export KUBE_PS1_SYMBOL_ENABLE=false
		source "/usr/local/opt/kube-ps1/share/kube-ps1.sh"
		PS1='$(kube_ps1)'" "$PS1	
	fi	
fi

echo "PATH: ${PATH}"

#create default machine
#docker-machine create --driver virtualbox default

# Start/Configure Docker
#DOCKER_RUNNING=$(docker-machine ls --format "{{.Name}}: {{.State}}" --filter name=default)
#if [[ "${DOCKER_RUNNING}" == *"Stopped"* ]]; then
#    docker-machine start default
#    eval "$(docker-machine env default)"
#    env | grep "DOCKER"
#elif [[ "${DOCKER_RUNNING}" == *"Running"* ]]; then
#    eval "$(docker-machine env default)"
#    env | grep "DOCKER"
#fi
