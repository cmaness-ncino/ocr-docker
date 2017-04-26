FROM ubuntu:16.04
MAINTAINER Christopher Maness <christopher.maness@ncino.com>
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && apt-get install -y --no-install-recommends apt-utils
RUN apt-get -qq -y install curl apt-utils libpng12-0 libjpeg62 libjpeg8 libtiff5
RUN mkdir /setup
ADD install.sh /setup/install.sh
RUN ["chmod", "+x", "/setup/install.sh"]
RUN /setup/install.sh
ENTRYPOINT java -jar /srv/tika-server-1.*-SNAPSHOT.jar -host 0.0.0.0

EXPOSE 9998
ENV DEBIAN_FRONTEND teletype
