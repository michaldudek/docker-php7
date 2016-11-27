# Base on Neverbland image, Paul's done a great job on that one
FROM neverbland/php:7.0.13
MAINTAINER Michał Pałys-Dudek <michal@palys-dudek.pl>

# Mount custom file
ADD mount/ /

# Run my custom build 
ADD scripts/build.sh /build.sh
RUN sh /build.sh && rm -fr /build.sh

CMD ["php", "-a"]
