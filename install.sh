#!/usr/bin/env bash

usage() { echo "Usage: $0 [-p <iterm2,>]" 1>&2; exit 1; }

while getopts ":p:" o; do
    case "${o}" in
        p)
            	p=${OPTARG}
            	((p == 'iterm2')) || usage
		echo "Installing iTerm2 config"
		echo "Installing ohmyzsh"
		./iterm2/install_oh_my_zsh.sh
		echo "Setting ZSH theme in ~/.zshrc to 'agnoster'"
		perl -pi -e 's/ZSH_THEME=\"\w+\"/ZSH_THEME="agnoster"/g' ~/.zshrc
		echo "Installing zsh highlighting"
		brew install zsh-syntax-highlighting
            	;;
        *)
            	usage
            	;;
    esac
done
shift $((OPTIND-1))

if [ -z "${p}" ]; then
    usage
fi

