# /etc/skel/.bashrc
#
# This file is sourced by all *interactive* bash shells on startup,
# including some apparently interactive shells such as scp and rcp
# that can't tolerate any output.  So make sure this doesn't display
# anything or bad things will happen !


# Test for an interactive shell.  There is no need to set anything
# past this point for scp and rcp, and it's important to refrain from
# outputting anything in those cases.
if [[ $- != *i* ]] ; then
	# Shell is non-interactive.  Be done now!
	return
fi

# Put your fun stuff here.
PS1="\[\e[0;1;32m\]\u\[\e[0;33m\]@\[\e[0;1;32m\]\h\[\e[m\] \[\e[0m\]:\[\e[0m\]:\[\e[m\] \[\e[0;1;31m\]\W\[\e[m\] \[\e[0m\]>\[\e[0m\]>\[\e[m\] \[\e0"

EDITOR="vim"

# Custom Git Tree command
git() {
    if [[ $@ == "tree" ]]; then
        command git log --oneline --decorate --graph --all
    else
        command git "$@"
    fi
}

# PATH Additions
export PATH="~/Repos/dart-sass:$PATH"
export PATH="~/.local/bin:$PATH"
export PATH="/usr/local/bin/Discord:$PATH"
export PATH="~/.cabal/bin:$PATH"

# Aliases
alias emerge-update="sudo emerge --ask --verbose --update --deep --changed-use @world"
