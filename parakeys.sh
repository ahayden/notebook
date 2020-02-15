#public instances with ssh exposed
#return list of public IP for all instances
#generate keys and add generic user's pubkey 
targets=" T \
	  V \
	  F " #IP list
for i in $targets ; do 
  mkdir -p /tmp/hack/$i/
  ssh-keygen -t rsa -b 4096 -f /tmp/hack/$i/key
  usr=`openssl rand -hex 4`
  cat > /tmp/hack/$i/mk.sh << EOF
    sudo useradd -m -p `openssl rand -hex 15` $usr
    sudo mkdir -p /home/$usr/.ssh
    sudo mv /tmp/key.pub /home/$usr/.ssh/authorized_keys
    sudo chmod 0644 /home/$usr/.ssh/authorized_keys
    sudo chown $usr. /home/$usr/.ssh/authorized_keys
    #install docker studio?
EOF
  scp /tmp/hack/$i/key.pub $i:/tmp/
  scp /tmp/hack/$i/mk.sh $i:/tmp/
  ssh -t $i sudo sh /tmp/mk.sh

  cat > /tmp/hack/$i/cfg << EOF
    Host remote
    Hostname $i
    User $usr
    IdentityFile ./key
    LocalForward 8787 localhost:8787
EOF
done
#distribute privkey, assigned IP, and ssh string 
# can do `ssh -F cfg remote`
tar cz -f /tmp/connections.tgz /tmp/hack
#cp usb
