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

#Enusre the latest python2 from homebrew will be used
#/usr/local/sbin added for homebrew installs
export PATH=/usr/local/opt/python/libexec/bin:/usr/local/sbin:${PATH}

echo "PATH: ${PATH}"

#echo "rdr pass inet proto tcp from any to any port 80 -> 127.0.0.1 port 8181" | sudo pfctl -ef -

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
