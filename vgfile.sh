echo "-----------------------------------------------"
apt update

apt install -y busybox ssh
apt-get install -y openssh-server
apt install -y busybox docker
apt install -y  docker.io

echo "-----------------------------------------------"
ls -l
cat 'UbuntuF.pem' > 'Ubuntu.pem'
chmod 777 'Ubuntu.pem'
ls -l
mv 'Ubuntu.pem' /tmp
cd /tmp
pwd
chmod 400 'Ubuntu.pem'
ls -l
#chown ubuntu:users /tmp/UbuntuF.pem
#chmod 400 '/tmp/UbuntuF.pem'
echo "=================docker build=================="
cd /tmp/Docker
pwd
docker build -t dima .
pwd
echo "=================docker run===================="
cd /tmp/Docker
pwd
docker run -p 7777:8090 -d dima

echo "================ssh============================"
cd /tmp
pwd
ssh -i 'Ubuntu.pem' -v -f -N -R 9999:localhost:7777 ubuntu@13.56.207.23


