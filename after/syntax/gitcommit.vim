"taken from: https://shime.sh/git-commit-message-syntax-highlighting-in-vim
syn clear gitcommitSummary
syn match gitcommitSummary    "^.\{0,72\}" contained containedin=gitcommitFirstLine nextgroup=gitcommitOverflow contains=@Spell
