#!/usr/bin/env bash

backup() {
   cp "$1"{,.bak};
}

dotDiff() {
   diff -r ~/${1} ~/DotFiles/${1}
}
