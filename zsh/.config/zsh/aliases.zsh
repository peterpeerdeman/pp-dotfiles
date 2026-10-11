# git
alias slugify="iconv -t ascii//TRANSLIT | sed -E -e 's/[^[:alnum:]]+/-/g' -e 's/^-+|-+$//g' | tr '[:upper:]' '[:lower:]'"

# other
alias ta='tmux attach'
alias vim='NVIM_APPNAME=lazyvim nvim'  # LazyVim, see lazyvim/README.md
alias ovim='nvim'                        # old packer config in nvim/
alias k='kubectl'
