# colored man pages
set -gx LESS_TERMCAP_mb \e'[1;32m'
set -gx LESS_TERMCAP_md \e'[1;32m'
set -gx LESS_TERMCAP_me \e'[0m'
set -gx LESS_TERMCAP_se \e'[0m'
set -gx LESS_TERMCAP_so \e'[01;33m'
set -gx LESS_TERMCAP_ue \e'[0m'
set -gx LESS_TERMCAP_us \e'[1;4;31m'

# gpg
set -gx GPG_TTY (tty)

function ifpresent
    if which $argv[1] &>/dev/null
        eval $argv[2..-1]
    end
end

# initialization stuff
ifpresent starship 'starship init fish | source'
ifpresent zoxide 'zoxide init fish | source'
