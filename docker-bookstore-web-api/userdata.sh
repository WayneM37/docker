#! /bin/bash
yum update -y
amazon-linux-extras install docker -y
systemctl start docker
systemctl enable docker
usermod -a -G docker ec2-user
yum install git -y
TOKEN="xxxxxx"
cd /home/ec2-user && git clone https://$TOKEN@github.com/WayneM37/docker-bookstore-web-api.git
curl -L "https://github.com/docker/compose/releases/download/1.27.4/docker-compose-$(uname -s)-$(uname -m)" \
-o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
cd docker-bookstore-web-api
docker-compose up -d
