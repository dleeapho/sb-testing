#FROM microsoft/dotnet-buildtools-prereqs:fedora-24-67592e6-20170219020243
FROM microsoft/dotnet-buildtools-prereqs:rhel-7-rpmpkg-e1b4a89-20175311035359
RUN mkdir dnsb
WORKDIR dnsb
#RUN curl -O https://matell.blob.core.windows.net/cli-src/dotnet-2.0.0-11.tar.gz
RUN curl -O https://matell.blob.core.windows.net/cli-src/dotnet-2.0.0-12.tar.gz
RUN tar xvf dotnet-2.0.0-12.tar.gz
WORKDIR dotnet

#RUN ./build.sh
