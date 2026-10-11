# git
alias srt='open -a Sourcetree'
alias slugify="iconv -t ascii//TRANSLIT | sed -E -e 's/[^[:alnum:]]+/-/g' -e 's/^-+|-+$//g' | tr '[:upper:]' '[:lower:]'"

# other
alias ta='tmux attach'
alias vim='nvim'
alias k='kubectl'

# yubikey
alias yubiadd='killall ssh-agent ; ssh-add -e /usr/local/lib/opensc-pkcs11.so &>/dev/null ; ssh-add -s /usr/local/lib/opensc-pkcs11.so'
