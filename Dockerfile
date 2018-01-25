FROM rhel74prereq 

#RUN mkdir dnsb
#WORKDIR dnsb
#ARG url
#RUN curl -o dotnet-2.0.5.tar.gz $url 
#RUN tar -xvf dotnet-2.0.5.tar.gz
#WORKDIR dotnet

RUN git clone https://github.com/crummel/source-build-tarball-2.0.5.git

WORKDIR source-build-tarball-2.0.5
#COPY source-build-tarball-2.0.5/* ./
RUN ./build.sh /p:SkipPatches=true
#RUN ./apply-patches.sh
#RUN ./build.sh
