# GPG
1. Generate signing key for GitHub noreply address
2. Generate revocation certificate
3. Publish public key to keyserver
4. Generate subkey and publish to key server
5. `gpg --keyid-format long --with-fingerprint --list-key $GHUSER@users.noreply.github.com` #for $GHUSER
6. `gpg --export --armor --output public-key.asc $KEYID` #for KEYID from (5)
7. Upload the contents of public-key.asc to GitHub profile
8. `git config commit.gpgsign true` in each repo requiring signed commits
