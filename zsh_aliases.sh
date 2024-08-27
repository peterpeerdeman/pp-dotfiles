#git aliases
alias remove-merged-branches='git branch --merged | grep -v "\*" | grep -v master | xargs -n 1 git branch -d'
alias srt='open -a SourceTree $1'
alias markdown-to-presentation="marp --theme ~/development/marp-core/themes/lifely.scss --preview"
alias markdown-to-presentation-pdf="marp --theme ~/development/marp-core/themes/lifely.scss --pdf"
alias slugify="iconv -t ascii//TRANSLIT | sed -E -e 's/[^[:alnum:]]+/-/g' -e 's/^-+|-+$//g' | tr '[:upper:]' '[:lower:]'"

#other aliases
alias ta='tmux attach'

alias vim='nvim'
alias ovim='/usr/local/bin/vim'
