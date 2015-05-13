# Bash aliases -- vphilippon

alias v='vim -p'
alias vip='vim -p'

alias t='TERM=xterm-256color tmux -2'

alias cd..='cd ..'
alias cd.='cd ..'

alias fucking='sudo'

#---- Job ----

alias wb='workon bfox'
alias wg='workon gitbuildhooks'
alias wt='workon email-template'
alias wp='workon tgpos'

alias bfox_run='hserve.py -c ~/conf/bfox/bfox_dev_obt_vphilippon.conf'

alias sync-inv-tst='rsync -a --delete --progress --exclude=/log --exclude=/spool --exclude=/webq --exclude=/templates --exclude=/venueMaps --exclude=/venueMapsXML vphilippon@bfox.prod.tst:/var/opt/outbox/tst/ ~/data/inv/tst/'

# Deprecated, prefer git-up
function hubsync()
{
    branch=${1-master}
    dirty=`git status -s | wc -l`
    curbranch=`git rev-parse --abbrev-ref HEAD`
    if [ $dirty -gt 0 ]; then
        git stash
    fi
    git checkout $branch && \
        git pull --ff-only upstream $branch && \
        git pull --tags upstream $branch && \
        git push origin $branch && \
        git push --tags origin $branch
    # set it back to where we were
    git checkout $curbranch
    if [ $dirty -gt 0 ]; then
        git stash pop
    fi
}

function pr(){
  destbranch=$1
  browser=google-chrome
  delay=3
  originurl=`git config remote.origin.url`
  repo=`echo $originurl | sed -e 's,.*/\(.*\)\.git$,\1,'`
  me=`echo $originurl | sed -e 's,.*\.com[:/]\(.*\)/.*,\1,'`
  remote=`git config branch.$destbranch.remote`
  remoteurl=`git config remote.$remote.url`
  server=`echo $remoteurl | sed -e 's,.*[@/]\(.*\)\.com.*,\1,'`
  owner=`echo $remoteurl | sed -e 's,.*\.com[:/]\(.*\)/.*,\1,'`
  curbranch=`git rev-parse --abbrev-ref HEAD`
  if git push origin $curbranch; then
    sleep $delay
    $browser "https://$server.com/$me/$repo/compare/$owner:$destbranch...$curbranch?expand=1"
  fi
}
