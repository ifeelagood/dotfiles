# Created by newuser for 5.9


# enable plugin zsh-autosuggestions
zsh_autosuggestions=/usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
if [[ -f $zsh_autosuggestions ]]; then 
	source $zsh_autosuggestions
fi

# enable plugin zsh-syntax-highlighting
zsh_syntax_highlighting=/usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
if [[ -f $zsh_syntax_highlighting  ]]; then
	source $zsh_syntax_highlighting
fi

# set word style to bash
autoload -U select-word-style
select-word-style bash

# bind ctrl-direction keys to skip word
bindkey '^[[1;5C' emacs-forward-word
bindkey '^[[1;5D' emacs-backward-word

# user@host:~/path prompt
setopt PROMPT_SUBST
PROMPT="%n@%m:%~ %(!.#.$) "


# environment
export GTK_THEME="Arc-Dark"
