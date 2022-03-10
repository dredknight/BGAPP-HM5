#!/bin/bash
echo "* Add hosts ..."
echo "192.168.99.101 docker1.do1.lab docker1" >> /etc/hosts
echo "192.168.99.102 docker1.do2.lab docker2" >> /etc/hosts
echo "192.168.99.103 docker1.do3.lab docker3" >> /etc/hosts

echo "* Install Additional Packages ..."
apt-get -qq install -y jq tree git vim &> /tmp/tmp.txt

echo "* ssh config details ..."

mkdir -p /root/.ssh
touch /home/vagrant/.ssh/known_hosts
touch /root/.ssh/id_rsa
chmod 600 /home/vagrant/.ssh/id_rsa
chmod 600 /root/.ssh/id_rsa
chown vagrant:vagrant /home/vagrant/.ssh/known_hosts

echo "-----BEGIN OPENSSH PRIVATE KEY-----
b3BlbnNzaC1rZXktdjEAAAAABG5vbmUAAAAEbm9uZQAAAAAAAAABAAABlwAAAAdzc2gtcn
NhAAAAAwEAAQAAAYEAkztnLKOBv+09O45JpX3jZBjGBXIk7vc847Ljc3R4IA75eOAuEPzl
Gk683zwu63sClpFUdLpK3/jGNCpWZr4q4lhKPkTijOvUoLHKxMEre+JhFdV8SrDfoq8+oa
nhh8Pnudy5vFtcBMmjKX6HeTg6gpcVqK9GUhU9FFziItuMWnUaN55ll/bP1SeGph7sYJF8
OTirl9rqk4tcfH1U4Laz3Tae9mLGh8Wd2xLbzaaXgbqgnDtv8UYjJXcmdYB+TZZ2loPDZ3
+8S3jFcvw22EGy/zcUwC7N3fpyFq0n3mbRtrPWjZSKAUBtASCHSQrxAKUhXylKdzvbaTXW
oLyCJ5sUkYg2m3xWpm4EPmjC8tkf0qqMSjV8EaDBSLmmxSk48n5OgNCfdC2ci790sDJ5US
1+eGIWtStOAdXyYnhCUpdKNFDxk1XaE9eFV1DNyZiWEVyQYtJyg7VEkBrG5IEAljVlnARs
Pipt8i9/kY/TBDBheRn2jRmGSVw8BB+fKep9qYEdAAAFiAjfIEcI3yBHAAAAB3NzaC1yc2
EAAAGBAJM7Zyyjgb/tPTuOSaV942QYxgVyJO73POOy43N0eCAO+XjgLhD85RpOvN88Lut7
ApaRVHS6St/4xjQqVma+KuJYSj5E4ozr1KCxysTBK3viYRXVfEqw36KvPqGp4YfD57ncub
xbXATJoyl+h3k4OoKXFaivRlIVPRRc4iLbjFp1GjeeZZf2z9UnhqYe7GCRfDk4q5fa6pOL
XHx9VOC2s902nvZixofFndsS282ml4G6oJw7b/FGIyV3JnWAfk2WdpaDw2d/vEt4xXL8Nt
hBsv83FMAuzd36chatJ95m0baz1o2UigFAbQEgh0kK8QClIV8pSnc722k11qC8giebFJGI
Npt8VqZuBD5owvLZH9KqjEo1fBGgwUi5psUpOPJ+ToDQn3QtnIu/dLAyeVEtfnhiFrUrTg
HV8mJ4QlKXSjRQ8ZNV2hPXhVdQzcmYlhFckGLScoO1RJAaxuSBAJY1ZZwEbD4qbfIvf5GP
0wQwYXkZ9o0ZhklcPAQfnynqfamBHQAAAAMBAAEAAAGAVPUtNwPupgpGkCwt8RHwed0Vvy
S7jS0bdKTQPNoTSyR47jgmPOVBamnO8N3wkS89MhcQbf7ln9IUxRs9GjJX2p5p0P683+Zh
noyZXem9ptHdhdTX0N25Xk3TTUQTAN2ZxJVKlBb/xT95KEN79wXsNVjrRZhGcq0QvsRONS
ENH1F9XGTJaOQhz3TsbMVhTuQEk5xQ3+KSA6uiJa/In5atuVOAbNpYhxYQXc7HCSc9O72u
WhiuIsJ/G2pixeDsgOb2DRnkk6CFirqdAeIwy1GjTKlCC79BOxcefe2MZCBdSUnyxatIYw
xeQbhgswBJC7QPVQU4iitv2ONEAXJAlCXvG9uf2ttOKpMyTqQaHDjqxn4mlihgTYAMtWCy
qmDwFMt4Q9wlF+R1JCyC2Hoi5HwcPc451Qq303btlUqGkKeO+3+q2jLCT+QL2fI8pyTcmW
CLxsEFu5Iqe+XRGmA1RfutyTyFTUhvdLwzNtdJO18jItQDxWWd/aL9c0jEUD6QwvO9AAAA
wQC6PmxG6p6pxcG9L6aAAyU6nZgBmJDT2bPfiecET95na8L4vJ9YV2j1dTI1AVVk0rhr3g
OK9OCrEMnOIUO2MxfOdmfUTSv/aZaxfJxkg4Byjo2YQVRIaRFvuYT619jI4cuoTdJqZooD
FERBzYnbpYgBOZ0ENm4r5FyYWZ5Jg8XaBaXZzjvYF2cWk1CzqalnJzAL9qcX3anb6Mri9o
67sEPB+i9jI22sUjgJ5Tged+gSvfyRdpLxpjU+Pgt+hczy010AAADBAMO9akXzNZURHwzY
Oi4HPA+862EexrqjhRfzn7XTUFP+PjvffDJDgQYyIbk292R77etsJ4OtPIOyt3CndvG7oV
zIMpUuZyRVhjW039d/xTUNzIxTRWx/esguYvUjYnXiK+VuOev3dIGMZdY4kNu0AWkZgJ5b
UrTlIqZyNaxCz5/j06/DUcuZgR2ecW6U4fFUDdDElJr9Pcs3PMqS49m8VUT1sCTI3ekruG
0nJP2MXiLzkbWRQD2T7OilQIY7SAfqtwAAAMEAwI8A3hc82zBhGMqlY82NueSuRpiG7eK7
KjKkTSBF7pI7I/BMunAG/xcUBzGW3vmA1UMuZVhGhqouprOOj95+aTAeoBI8V5g7hL/8Xk
INtkfYmpMRnDnMt4sAJshchgXAafprFTAvftiXT1oIGFVzKdEMEmiXxKjwoenEhSU11DXV
yd1bumSXLS3u0Qy8XKcR1IgNTf9GQl83mBHe7g80cSwHfeOH6uEoyM0qNrOC+X7fjH9H+v
lcHA1L39oe9q7LAAAAD3ZhZ3JhbnRAZG9ja2VyMwECAw==
-----END OPENSSH PRIVATE KEY-----" > /home/vagrant/.ssh/id_rsa

echo "-----BEGIN OPENSSH PRIVATE KEY-----
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
-----END OPENSSH PRIVATE KEY-----" > /root/.ssh/id_rsa

echo "* Configure swarm leader ..."
docker swarm init --advertise-addr 192.168.99.103
token=`docker swarm join-token -q worker`
echo "* Token is $token"

echo "* Configure swarm worker 1 ..."
ssh-keyscan -H docker1 >> /home/vagrant/.ssh/known_hosts
ssh-keyscan -H docker1 >> /root/.ssh/known_hosts
ssh vagrant@docker1 docker swarm join --token $token --advertise-addr 192.168.99.101 192.168.99.103:2377

echo "* Configure swarm worker 2 ..."
ssh-keyscan -H docker2 >> /home/vagrant/.ssh/known_hosts
ssh-keyscan -H docker2 >> /root/.ssh/known_hosts
ssh vagrant@docker2 docker swarm join --token $token --advertise-addr 192.168.99.102 192.168.99.103:2377

echo "* Check swarm status ..."
docker node ls

echo " Docker3 - Clone project ..."
cd docker
git clone https://github.com/shekeriev/dob-module-1
cp config.php dob-module-1/web/config.php

echo "* Build web image ..."
docker image build -t img-web -f Dockerfile.web .

echo "* Export web image ..."
docker image save img-web -o img-web.tar
chown vagrant:vagrant /home/vagrant/docker/img-web.tar

echo "* Build db image ..."
docker image build -t img-db -f Dockerfile.db .

echo "* Export db image ..."
docker image save img-db -o img-db.tar
chown vagrant:vagrant /home/vagrant/docker/img-db.tar

echo "* Docker2 - Copy project and docker files ..."
scp -r /home/vagrant/* vagrant@docker2:/home/vagrant

echo "* Docker2 - Build images ..."
ssh vagrant@docker2 docker image load -i /home/vagrant/docker/img-web.tar
ssh vagrant@docker2 docker image load -i /home/vagrant/docker/img-db.tar

echo "* Docker1 - Copy project and docker files ..."
scp -r /home/vagrant/* vagrant@docker1:/home/vagrant

echo "* Docker1 - Build images ..."
ssh vagrant@docker1 docker image load -i /home/vagrant/docker/img-web.tar
ssh vagrant@docker1 docker image load -i /home/vagrant/docker/img-db.tar

echo "* Deploy environment ..."
docker stack deploy -c <(head -n 1 swarmcompose.yaml ; docker-compose -f swarmcompose.yaml config) bgapp
docker stack services bgapp
