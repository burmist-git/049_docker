FROM ubuntu:20.04

# System packages 
RUN apt-get update && apt-get upgrade
#&& apt-get install -y apt-utils && apt-get install -y curl && apt-get install -y git && apt-get install -y unzip
#RUN apt-get install -y tzdata && apt-get install -y software-properties-common && add-apt-repository -y -u ppa:certbot/certbot

# Additional packages not required 
#RUN apt-get install -y emacs

# Install miniconda to /miniconda
#RUN curl -LO http://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh
#RUN bash Miniconda3-latest-Linux-x86_64.sh -p /miniconda -b
#RUN rm Miniconda3-latest-Linux-x86_64.sh
#ENV PATH=/miniconda/bin:${PATH}
#RUN conda update -y conda
