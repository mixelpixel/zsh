alias py="python3"
alias brewbrush="echo • brew update 🙌 && brew update && echo • brew outdated 🧐 && brew outdated && echo • brew upgrade ✨ && brew upgrade && echo • brew cleanup 🧹🧼 && brew cleanup && echo • brew doctor 🩺🩻 && brew doctor && echo • Rinse and Repeat! 💋 && echo • brew update 🙌 && brew update && echo • brew upgrade ✨ && brew upgrade && echo • brew cleanup 🧹🧼 && brew cleanup && echo • brew doctor 🩺🕺 && brew doctor && curl https://icanhazdadjoke.com"
alias fullbrush="echo • brew update 🙌 && brew update && echo • brew outdated 🧐 && brew outdated && echo • brew upgrade ✨ && brew upgrade && echo • brew cleanup 🧹🧼 && brew cleanup && echo • brew doctor 🩺🩻 && brew doctor && echo • rustup update stable 🙌🐎 && rustup update stable && echo • solana-install update 🙌🏖🏄 This command may fail, if so use the brewbrush cmd && solana-install update && echo • Rinse and Repeat! 💋 && echo • brew update 🙌 && brew update && echo • brew upgrade ✨ && brew upgrade && echo • brew cleanup 🧹🧼 && brew cleanup && echo • brew doctor 🩺🕺 && brew doctor && echo • rustup update stable 🙌🐎 && rustup update stable && echo • solana-install update 🙌🏖🏄 && solana-install update && curl https://icanhazdadjoke.com"
alias reload="exec /bin/zsh"
alias matrix="cmatrix"
alias router="netstat -rn |grep -o 'default.*UGSc'"


# Default prompt from /etc/zshrc
# PS1='%n@%m %1~ %# '

# PS1="%n %# "
# e.g. mixelpix %

PS1='%? %h %@ %1~ >> '
# e.g.
# 0 1037 11:54AM /Users >



# As of 7/2022 the `echo $PATH` variables are derived from their listed sources
# /usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/Users/mixelpix/.local/share/solana/install/active_release/bin:/Library/Apple/usr/bin:/Users/mixelpix/.cargo/bin
# #######################
# - SOURCE ~/.zshrc
# /Users/mixelpix/.bun/bin
# #######################
# - SOURCE /etc/paths
# /usr/local/bin
# /usr/local/sbin
# /usr/bin
# /bin
# /usr/sbin
# /sbin
# /Users/mixelpix/.local/share/solana/install/active_release/bin
# #######################
# - SOURCE unsure. Xcode?
# /Library/Apple/usr/bin
# #######################
# - SOURCE ~/.zshenv runs a script in cargo to add '$HOME/.cargo/bin:$PATH'
# /Users/mixelpix/.cargo/bin

# bun completions
[ -s "/Users/mixelpix/.bun/_bun" ] && source "/Users/mixelpix/.bun/_bun"

# Bun
export BUN_INSTALL="/Users/mixelpix/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
