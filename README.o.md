https://docs.docker.com/desktop/install/ubuntu/





sudo docker images

sudo docker build \
     --build-arg GITUSERNAME=burm.leonid \
     --build-arg GITPASSWORD=lga5o5ndiqf6a5yjwpv2luya4le37ubgytrcbl3cmrfalbdx4npq \
     --build-arg GITUSEREMAIL=burm.leonid@gmail.com \
     --build-arg TTPCREDSID=c29683c2 \
     --build-arg TTPCREDSKEY=0730d35fca589ad0b4f35ce9066e6e30 \
     -f Dockerfile \
     -t gneo /home/burmist/docker_gNEO

sudo docker rmi -f $(sudo docker images | awk {'print $3'} | grep -v IMAGE | xargs)
sudo docker rm $(sudo docker ps -a | awk {'print $1'}
