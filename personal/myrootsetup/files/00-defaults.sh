#!/bin/sh

export MAKEFLAGS="-j $(($(nproc)+1))"
export EDITOR=vim
export CC=tcc
export DEFAULT_CC=tcc
