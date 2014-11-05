# Bash aliases -- vphilippon

alias v='vim -p'
alias vip='vim -p'
alias t='TERM=xterm-256color tmux -2'
alias dotUpdate='git submodule foreach git pull --recurse-submodules && git submodule update --init --recursive'
alias cd..='cd ..'
alias cd.='cd ..'

#---- Job ----

alias wb='workon bfox'
alias wg='workon gitbuildhooks'
alias wt='workon email-template'

alias bfox_run='hserve.py -c ~/conf/bfox/bfox_prod_tst_vphilippon.conf'

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
  browser=google-chrome
  delay=3
  origin=`git remote -v | grep origin | head -n1 | awk '{print $2}'`
  repo=`echo $origin | sed -e 's,.*/\(.*\)\.git$,\1,'`
  me=`echo $origin | sed -e 's,.*\.com[:/]\(.*\)/.*,\1,'`
  upstream=`git remote -v | grep upstream | head -n1 | awk '{print $2}'`
  server=`echo $upstream | sed -e 's,.*[@/]\(.*\)\.com.*,\1,'`
  owner=`echo $upstream | sed -e 's,.*\.com[:/]\(.*\)/.*,\1,'`
  curbranch=`git rev-parse --abbrev-ref HEAD`
  if git push origin $curbranch; then
    sleep $delay
    $browser "https://$server.com/$me/$repo/compare/$owner:$1...$curbranch?expand=1"
  fi
}
