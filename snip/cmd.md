## Check oauth keylength
curl -s https://login.microsoftonline.com/common/discovery/keys |jq -r ".keys[0].n" |tr '_-' '\+'|awk '{ print $1"=="}'|base64 -d|dd>/dev/null

## SSH agent auth to git server
eval `ssh-agent -s` && ssh-add ~/.ssh/github

