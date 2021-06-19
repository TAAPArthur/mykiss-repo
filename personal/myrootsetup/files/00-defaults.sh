#!/bin/sh

MAKEFLAGS="-j $(nproc)"
export MAKEFLAGS
export SAMUFLAGS=$MAKEFLAGS
export EDITOR=vim
export CC=tcc
export DEFAULT_CC=tcc
