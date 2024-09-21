export EDITOR=nvim
export PATH="/usr/lib/ccache/bin/:$PATH"
export ZSH="$HOME/.oh-my-zsh"

if [ -f ~/.config/zsh/zshstart ]; then
    source ~/.config/zsh/zshstart
else
    print "404: ~/.config/zsh/zshstart not found."
fi

if [ -f ~/.config/zsh/zshalias ]; then
    source ~/.config/zsh/zshalias
else
    print "404: ~/.config/zsh/zshalias not found."
fi

if [ -f ~/.config/zsh/zshplugins ]; then
    source ~/.config/zsh/zshplugins
else
    print "404: ~/.config/zsh/zshplugins not found."
fi

