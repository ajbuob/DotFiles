#!/usr/bin/env bash

backup() {
   cp "$1"{,.bak}
}

dotDiff() {
   diff -r ~/${1} ~/DotFiles/${1}
}

dfg() {
	cp ~/.bash_profile ~/DotFiles
	cp ~/.bash_exports ~/DotFiles
	cp ~/.bash_aliases ~/DotFiles
	cp ~/.bash_functions ~/DotFiles
}

helm2() {
	export HELM_HOME=${HELM2_HOME}
	export PATH=${HELM_HOME}/bin:$PATH
	echo "PATH: ${PATH}"
}

helm3() {
	export HELM_HOME=${HELM3_HOME}
	export PATH=${HELM_HOME}/bin:$PATH
	echo "PATH: ${PATH}"
}
