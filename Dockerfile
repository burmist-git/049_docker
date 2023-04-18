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


##Install root
#ARG initial_dir=/
#ARG version_root=6.18.04
#ARG sourceHomeDir_root=root-$version_root
#ARG roothomeDir=$initial_dir/$sourceHomeDir_root
#ARG duildDir=$roothomeDir/$sourceHomeDir_root-build
#ARG installDir=$roothomeDir/$sourceHomeDir_root-install
#ARG patch_file=davix_download_patch_6.18.04.patch
#ARG patch_file_full=/setupenv/$patch_file
#RUN mkdir -p $roothomeDir
#RUN mkdir -p $duildDir
#RUN mkdir -p $installDir
#
#RUN cd $roothomeDir && \
#    wget https://root.cern.ch/download/root_v6.18.04.source.tar.gz && \
#    tar -zxvf root_v6.18.04.source.tar.gz
#patch
#RUN cd $roothomeDir/$sourceHomeDir_root/builtins/davix/ && \
#    cp $patch_file_full . && \
#    patch -u < $patch_file
#
#RUN cd $duildDir && \
#    cmake -Dclad=OFF -DCMAKE_INSTALL_PREFIX=$installDir $roothomeDir/$sourceHomeDir_root && \
#    make -j5 && \
#    make install
#RUN cp davix_download_patch_6.18.04.patch /.
#RUN cp /setupenv/davix_download_patch_6.18.04.patch /. && \
#    cp /setupenv/install-root_v6.18.04.sh /.
#RUN . /install-root_v6.18.04.sh -pr
#RUN cd root-6.18.04
#RUN tar -zxvf root_v6.18.04.source.tar.gz
#RUN mkdir -p root_v6.18.04-build
#RUN mkdir -p root_v6.18.04-install
#RUN cd root_v6.18.04-build
#RUN cmake -DCMAKE_INSTALL_PREFIX=/root-6.18.04/root_v6.18.04-install /root-6.18.04/root_v6.18.04
#RUN make -j
#RUN make install
#install root
#cd $roothomeDir
#unpack
#tar -zxvf root_v$version.source.tar.gz
#make_patch
#makebuild and install directories
# mkdir -p $duildDir
#mkdir -p $installDir
#cd $duildDir
#cmake -Dclad=OFF -DCMAKE_INSTALL_PREFIX=$installDir $roothomeDir/$sourceHomeDir
#echo "nthreads = $nthreads"
#make -j$nthreads
#makeInstallRoot
#cd $initial_dir
#RUN cp /setupenv/davix_download_patch_6.18.04.patch /. && \
#    cp /setupenv/install-root_v6.18.04.sh /. && \
#    source /install-root_v6.18.04.sh -d
#install geant
#RUN cp /setupenv/install-geant4_10_04_p03.sh /. && \
#    source /install-geant4_10_04_p03.sh -d
#miniconda
#RUN cp /setupenv/install-miniconda.sh /. && \
#    source /install-miniconda.sh
#RUN cd /setupenv && \
#    pwd && \
#    ls install.sh && \
#    source /geant4.10.04.p03/geant4.10.04.p03-install/share/Geant4-10.4.3/geant4make/geant4make.sh && \
#    source /root-6.18.04/root-6.18.04-install/bin/thisroot.sh && \
#    source /setupenv/install.sh -d
