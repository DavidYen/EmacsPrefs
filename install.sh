#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Remove any previous installed lines.
cp ~/.emacs ~/.emacs.bak
rm ~/.emacs
cat ~/.emacs.bak | grep -v EmacsPrefs >> ~/.emacs

# Install lines.
echo \;\; EmacsPrefs >> ~/.emacs
echo \(add-to-list \'load-path \"${DIR}/emacs/\"\) \;\; EmacsPrefs >> ~/.emacs 
echo \(load-library \"base\"\) \;\; EmacsPrefs >> ~/.emacs
echo \(load_emacs_refs\) \;\; EmacsPrefs >> ~/.emacs
