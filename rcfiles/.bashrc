## Prompt and common commands
export PS1="\e[0;31m\u@\h \w: \e[m"
alias ls="ls -F --color"
alias ll="ls -lart"
alias vi="vim"
alias search="ls -F | grep \\"
alias nosearch="ls -F | grep -v \\"

## Machine specific
alias GWD="cd ~/gitcode/ceph/src"
alias VMCONNECT="ssh src0@192.168.56.102"
alias WMCONNECT="ssh src0@192.168.56.103"
alias XMCONNECT="ssh src0@192.168.56.104"
alias SYSDEPLOY="./wenv.sh;screen -x;"
alias MINIONS="~/minions"

## Git stuff
alias diffgit="git diff --cached"
alias addgit="git add ."

## Koding.com
alias koding="ssh shivanshu21@shivanshu21.koding.io"

## machine access
alias WSMAC="ssh -i rahulKey obj_team@10.140.13.15"
alias BOOTSTRAP="ssh -i rahulKey obj_team@10.140.214.195"
alias DSSMON1="ssh -i rahulKey obj_team@10.140.214.196"
alias DSSMON2="ssh -i rahulKey obj_team@10.140.214.197"
alias DSSMON3="ssh -i rahulKey obj_team@10.140.214.198"
alias DSSMON4="ssh -i rahulKey obj_team@10.140.214.199"
alias DSSMON5="ssh -i rahulKey obj_team@10.140.214.200"

## let ls and dir have good colors :)
export GREP_OPTIONS='--color=auto'
eval `dircolors -b ~/.dir_colors`

## Keystone
export OS_SERVICE_ENDPOINT="http://localhost:35357/v2.0"
export OS_AUTH_URL="http://localhost:35357/v2.0"
export OS_SERVICE_TOKEN="ADMIN"
