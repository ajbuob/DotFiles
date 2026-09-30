# The following lines were added by Docker Desktop to add commands to your PATH.
export PATH="$PATH:/Users/alexanderbuob/.docker/bin"
# End of Docker Desktop section.

#!/usr/bin/env bash

#homebrew for Mac Silicon
export PATH=/opt/homebrew/bin:${PATH}

#reomve deprecation message
export BASH_SILENCE_DEPRECATION_WARNING=1

#Source all the modules
for file in ~/.bash_{exports,aliases,functions}; do
	[ -r "${file}" ] && [ -f "${file}" ] && source "${file}";
done
unset file

#Load main bash completion
if [ -f /usr/local/share/bash-completion/bash_completion ]; then
    source /usr/local/share/bash-completion/bash_completion
fi

[[ -r "/opt/homebrew/etc/profile.d/bash_completion.sh" ]] && . "/opt/homebrew/etc/profile.d/bash_completion.sh"

#Load brew bash completion
for file in $(brew --prefix)/etc/bash_completion.d/*
do
   [ -r "${file}" ] && [ -f "${file}" ] && source "${file}";
done
unset file

#/usr/local/sbin added for homebrew installs
export PATH=${PATH}:/usr/local/sbin:~/bin

# kubectx added to command prompt
if command -v kubectx &> /dev/null; then
	if ! [[ "$PS1" =~ ^\$\(kube_ps1\).* ]]; then
		export KUBE_PS1_SYMBOL_ENABLE=false;
		if [ -d "/usr/local/Homebrew" ]; then 
		  source "/usr/local/opt/kube-ps1/share/kube-ps1.sh"
		fi
		if [ -d "/opt/homebrew/opt" ]; then 
		  source "/opt/homebrew/opt/kube-ps1/share/kube-ps1.sh"
		fi
		PS1='$(kube_ps1)'" "$PS1	
	fi	
fi

echo "PATH: ${PATH}"

# Automatically start Colima if it isn't running
#
# --vm-type=vz  
# (use Apple’s native macOS Virtualization.framework
# instead of the older, open-source QEMU emulator.)
if ! colima status >/dev/null 2>&1; then
    echo "Starting Colima background engine..."
    colima start --vm-type=vz --cpu 4 --memory 8
fi
