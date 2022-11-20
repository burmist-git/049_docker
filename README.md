## 1. File description

   * getTheData.sh --> script to download the population density data
```
./getTheData.sh -d
```
Source: https://ec.europa.eu/eurostat/web/gisco/geodata/reference-data/population-distribution-demography/geostat

   * gNEOenv.yml --> list of the all python python packages
```
conda env create --force -f gNEOenv.yml
```

   * Dockerfile --> file for docker image creation 
```
sudo docker images (--> list of docker images)
```
```
sudo docker ps -a (--> list of all docker containers)
```

```
docker ps (--> list started containers)
```

```
docker ps (--> list started containers)
```

```
sudo docker build \
     --build-arg GITUSERNAME=xxxxxx \
     --build-arg GITPASSWORD=xxxxxxxxxx \
     --build-arg GITUSEREMAIL=xxxxxx@xxxxx.xxx \
     --build-arg TTPCREDSID=xxxxxx \
     --build-arg TTPCREDSKEY=xxxxxxxx \
     -f Dockerfile \
     -t gneo /home/xxxx/ (--> create docker images from Dockerfile with git and travel time credentials - passed as parameters)
```
```
sudo docker rmi -f $(sudo docker images | awk {'print $3'} | grep -v IMAGE | xargs)  (--> rm images)
```
```
sudo docker rm $(sudo docker ps -a | awk {'print $1'}) (--> rm containers)
```

```
sudo docker commit <CONTAINER ID> <image name> (--> creating an image from container)
```

```
docker run -it <image name> (--> creating a container from image)
```

```
docker run -d -it <image name>  (--> creating a container from image in detached mode)
```

```
container> exit (ctrl + d) (--> stop and exit container)
```

```
docker start <CONTAINER ID> (--> start container in detached mode)
```

```
docker attach <CONTAINER ID> (--> start container in detached mode)
```


Detaching Without Stopping : Ctrl-P, followed by Ctrl-Q,


   * population_data_per_country.py --> 
   
   * Date_to_ISO.py --> transforms date/time into ISO format required by TravelTime API

   Used by PopulationCalculation.py and OperatorNetwork.py
   
   * TravelTime.py --> calls TravelTime API to get catchment contours or distance between 2 locations 
   
   Used by PopulationCalculation.py and OperatorNetwork.py

   * PopulationCalculation.py --> calculates population within catchment area with predefined parameters for given locations 

   * populationDataFiltering.py --> filters the requred region from population density shape files

   Used by PopulationCalculation.py

   * OperatorNetwork.py --> 



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


https://docs.docker.com/engine/install/ubuntu/#uninstall-docker-engine
Uninstall Docker Engine
sudo apt-get purge docker-ce docker-ce-cli containerd.io docker-compose-plugin
sudo rm -rf /var/lib/docker
sudo rm -rf /var/lib/containerd




https://docs.docker.com/engine/install/ubuntu/#installation-methods
Install using the repository

Update the apt package index and install packages to allow apt to use a repository over HTTPS:
sudo apt-get update
sudo apt-get install
sudo apt-get ca-certificates
sudo apt-get curl
sudo apt-get gnupg
sudo apt-get lsb-release

Add Docker’s official GPG key:
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg

Use the following command to set up the repository:
echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

sudo apt-get update

BEFORE add the key and new rep.
> sudo apt-get update
Hit:1 http://ch.archive.ubuntu.com/ubuntu focal InRelease
Hit:2 http://ch.archive.ubuntu.com/ubuntu focal-updates InRelease
Hit:3 http://ch.archive.ubuntu.com/ubuntu focal-backports InRelease
Hit:4 http://security.ubuntu.com/ubuntu focal-security InRelease
Reading package lists... Done

AFTER add the key and new rep.
> sudo apt-get update
Hit:1 http://ch.archive.ubuntu.com/ubuntu focal InRelease
Hit:2 http://ch.archive.ubuntu.com/ubuntu focal-updates InRelease                                                
Hit:3 http://ch.archive.ubuntu.com/ubuntu focal-backports InRelease                                              
Hit:4 http://security.ubuntu.com/ubuntu focal-security InRelease                                         
Get:5 https://download.docker.com/linux/ubuntu focal InRelease [57.7 kB]  
Get:6 https://download.docker.com/linux/ubuntu focal/stable amd64 Packages [20.9 kB]
Fetched 78.6 kB in 0s (264 kB/s)      
Reading package lists... Done



sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin
sudo docker run hello-world

sudo ls /var/lib/docker
sudo ls /var/lib/containerd

