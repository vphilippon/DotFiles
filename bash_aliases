# Bash aliases -- vphilippon

alias v='vim -p'
alias vip='vim -p'

alias bfox_run='hserve.py -c ~/conf/bfox/bfox_prod_tst_vphilippon.conf'

alias sync-inv-tst='rsync -a --delete --progress --exclude=/log --exclude=/spool --exclude=/webq --exclude=/templates --exclude=/venueMaps --exclude=/venueMapsXML vphilippon@bfox.prod.tst:/var/opt/outbox/tst/ ~/data/inv/tst/'
