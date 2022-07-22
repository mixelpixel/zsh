# PS1="%n %# "
# e.g. mixelpix %

PS1="%? %h %@ %1~ "
# e.g. 0 1037 11:54AM /Users >

alias py="python3"
alias brewbrush="echo • brew update 🙌 && brew update && echo • brew outdated 🧐 && brew outdated && echo • brew upgrade ✨ && brew upgrade && echo • brew cleanup 🧹🧼 && brew cleanup && echo • brew doctor 🩺🩻 && brew doctor && echo • Rinse and Repeat! 💋 && echo • brew update 🙌 && brew update && echo • brew upgrade ✨ && brew upgrade && echo • brew cleanup 🧹🧼 && brew cleanup && echo • brew doctor 🩺🕺 && brew doctor && curl https://icanhazdadjoke.com"
alias fullbrush="echo • brew update 🙌 && brew update && echo • brew outdated 🧐 && brew outdated && echo • brew upgrade ✨ && brew upgrade && echo • brew cleanup 🧹🧼 && brew cleanup && echo • brew doctor 🩺🩻 && brew doctor && echo • rustup update stable 🙌🐎 && rustup update stable && echo • solana-install update 🙌🏖🏄 This command may fail, if so use the brewbrush cmd && solana-install update && echo • Rinse and Repeat! 💋 && echo • brew update 🙌 && brew update && echo • brew upgrade ✨ && brew upgrade && echo • brew cleanup 🧹🧼 && brew cleanup && echo • brew doctor 🩺🕺 && brew doctor && echo • rustup update stable 🙌🐎 && rustup update stable && echo • solana-install update 🙌🏖🏄 && solana-install update && curl https://icanhazdadjoke.com"
alias reload="exec /bin/zsh"
alias matrix="cmatrix"
alias router="netstat -rn |grep -o 'default.*UGSc'"

# export PATH="/usr/local/sbin:$PATH" # Has been added to /private/etc/paths

# As of 7/6/2022:
# PATH=/Users/mixelpix/.bun/bin:/Users/mixelpix/opt/anaconda3/bin:/bin:/sbin:/usr/bin:/usr/local/bin:/usr/sbin:/Users/mixelpix/.local/share/solana/install/active_release/bin:/Library/Apple/usr/bin:/Users/mixelpix/.cargo/bin
#
# ## from /etc/paths
# /bin
# /sbin
# /usr/bin
# /usr/local/bin
# /usr/sbin
# /Users/mixelpix/.local/share/solana/install/active_release/bin
#
# ## : separation
# /Users/mixelpix/.bun/bin          <--- ~/.zshrc
# /Users/mixelpix/opt/anaconda3/bin <--- ~/.zshrc
# /usr/local/bin                    <--- /etc/paths
# /usr/local/sbin                   <--- /etc/paths - per brew installing, this had been in the ~/.zshrc file
# /bin                              <--- /etc/paths
# /sbin                             <--- /etc/paths
# /usr/bin                          <--- /etc/paths
# /usr/sbin                         <--- /etc/paths
# /Users/mixelpix/.local/share/solana/install/active_release/bin <--- /etc/paths & ~?.profile
# /Library/Apple/usr/bin            <--- ??? Something from XCode?
# /Users/mixelpix/.cargo/bin        <--- ~/.zshenv runs `. "$HOME/.cargo/env"` which sets path to the .cargo/bin file


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/mixelpix/opt/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/mixelpix/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/mixelpix/opt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/mixelpix/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


# bun completions
[ -s "/Users/mixelpix/.bun/_bun" ] && source "/Users/mixelpix/.bun/_bun"

# Bun
export BUN_INSTALL="/Users/mixelpix/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# `$ brew install curl`
# ==> Caveats
# curl is keg-only, which means it was not symlinked into /usr/local,
# because macOS already provides this software and installing another version in
# parallel can cause all kinds of trouble.
#
# If you need to have curl first in your PATH, run:
#   echo 'export PATH="/usr/local/opt/curl/bin:$PATH"' >> ~/.zshrc
#
# For compilers to find curl you may need to set:
#   export LDFLAGS="-L/usr/local/opt/curl/lib"
#   export CPPFLAGS="-I/usr/local/opt/curl/include"
#
# For pkg-config to find curl you may need to set:
#   export PKG_CONFIG_PATH="/usr/local/opt/curl/lib/pkgconfig"
#
#
# zsh completions have been installed to:
#   /usr/local/opt/curl/share/zsh/site-functions
export PATH="/usr/local/opt/curl/bin:$PATH"

# Per https://scriptingosx.com/2019/07/moving-to-zsh-part-5-completions/
# Getting TAB autocomplete behavior in order
# autoload -Uz compinit && compinit 

# Per https://serverfault.com/questions/109207/how-do-i-make-zsh-completion-act-more-like-bash-completion
# setopt noautomenu
# setopt nomenucomplete

# setopt autolist
