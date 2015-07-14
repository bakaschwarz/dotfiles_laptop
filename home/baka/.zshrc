PROMPT=%#
export PROMPT
archey3

###########
# Aliases #
###########

alias startm="/bin/mpd ~/.mpd.conf"
alias stopm="/bin/mpd --kill"
alias chat="/bin/mcabber"
alias tkeys="/bin/xev | grep 'keysym'"
alias lan="/bin/sudo /usr/bin/dhcpcd enp3s0"
alias wlan="/bin/sudo /usr/bin/dhcpcd wlp4s0"
alias syu="/bin/sudo /bin/pacman -Syu"
alias ix="/bin/curl -F 'f:1=<-' ix.io"
alias ls='ls --color=auto'

#It's cool not to go to the site everytime you want to watch a stream.
function twitschi {
	/bin/livestreamer --player mpv http://www.twitch.tv/$1 $2
}
#Of cource vim is our default editor in the shell!
EDITOR=vim
#So that the path to ruby gems is in $PATH
PATH=$PATH:~/.gem/ruby/2.2.0/bin
