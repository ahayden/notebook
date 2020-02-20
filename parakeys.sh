#public instances with ssh exposed
#return list of public IP for all instances
#generate keys and add generic user's pubkey 
targets=" T \
	  V \
	  F " #IP list

for i in $targets ; do 

  mkdir -p /tmp/hack/$i/ && cd /tmp/hack/$i
  ssh-keygen -t rsa -b 4096 -f key -q -N ""
  usr=`openssl rand -hex 4`

  cat > /tmp/hack/$i/mk.sh << EOF
useradd -m -p `openssl rand -hex 15` $usr
mkdir -p /home/$usr/.ssh
mv /tmp/key.pub /home/$usr/.ssh/authorized_keys
chmod 0644 /home/$usr/.ssh/authorized_keys
chown $usr. /home/$usr/.ssh/authorized_keys
apt-get update && apt-get install -y docker.io
usermod -aG docker $usr
systemctl enable docker && service docker start
su -c "docker run -e DISABLE_AUTH=true -d -p 127.0.0.1:8787:8787 kelshmo/sc-covarr" $usr
EOF

  scp -i ~/.ssh/jumpcloud -oStrictHostKeyChecking=accept-new key.pub mk.sh $i:/tmp/
  ssh -i ~/.ssh/jumpcloud -t $i sudo sh /tmp/mk.sh

  cat > cfg << EOF
Host remote
  Hostname $i
  User $usr
  IdentityFile ./key
  LocalForward 8787 localhost:8787
  StrictHostKeyChecking accept-new
EOF

  echo "[InternetShortcut]" >rstudio.url
  echo "URL=http://localhost:8787/" >>rstudio.url
  echo "#!/bin/sh" >connect.sh
  echo "ssh -F cfg remote " >>connect.sh
  chmod +x connect.sh 

done
#distribute privkey, assigned IP, and ssh string 
# can do ./connect.sh and open rstudio.url
cd /tmp && tar c -f connections.tar hack
#cp connections.tar /Volumes/usbstick ; cd /Volumes/usbstick ; tar xvf connections.tar
# On MacOS/Linux: tar -xf connections.tar '*ip*'
# On Win10: copy ip to folder

#(1) Open rstudio shell
#(2) Fork git repo https://github.com/Sage-Bionetworks/UW-single-cell-hackathon.git
#(3) git clone from personal fork
#(4) pull from personal fork, commit local changes, push to personal fork
