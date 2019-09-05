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
