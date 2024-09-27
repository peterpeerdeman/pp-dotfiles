#git aliases
alias remove-merged-branches='git branch --merged | grep -v "\*" | grep -v master | xargs -n 1 git branch -d'
alias srt='open -a SourceTree $1'
alias slugify="iconv -t ascii//TRANSLIT | sed -E -e 's/[^[:alnum:]]+/-/g' -e 's/^-+|-+$//g' | tr '[:upper:]' '[:lower:]'"

#other aliases
alias ta='tmux attach'
alias vim='nvim'

# previous versions
alias ovim='/usr/local/bin/vim'
alias oldbrew='/usr/local/bin/brew'

# switch arches
alias arm="$env /usr/bin/arch -arm64 /bin/zsh ---login"
alias intel="$env /usr/bin/arch -x86_64 /bin/zsh ---login"
