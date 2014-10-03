# Bash aliases -- vphilippon

alias v='vim -p'
alias vip='vim -p'
alias t='TERM=xterm-256color tmux -2'
alias dotUpdate='git submodule foreach git pull --recurse-submodules && git submodule update --init --recursive'

#---- Job ----

alias wb='workon bfox'
alias wg='workon gitbuildhooks'

alias bfox_run='hserve.py -c ~/conf/bfox/bfox_prod_tst_vphilippon.conf'

alias sync-inv-tst='rsync -a --delete --progress --exclude=/log --exclude=/spool --exclude=/webq --exclude=/templates --exclude=/venueMaps --exclude=/venueMapsXML vphilippon@bfox.prod.tst:/var/opt/outbox/tst/ ~/data/inv/tst/'

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
  repo=`git remote -v | head -n1 | awk '{print $2}' | sed -e 's,.*:\(.*/\)\?,,' -e 's/\.git$//'`
  curbranch=`git rev-parse --abbrev-ref HEAD`
  if git push origin $curbranch; then
    sleep $delay
    $browser "https://github.outboxtechnology.com/`whoami`/$repo/compare/outbox:$1...$curbranch?expand=1"
  fi
}
