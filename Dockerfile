# Base on Neverbland image, Paul's done a great job on that one
FROM neverbland/php:7.0.4
MAINTAINER Michał Pałys-Dudek <michal@michaldudek.pl>

# Run my custom build 
ADD scripts/build.sh /build.sh
RUN sh /build.sh && rm -fr /build.sh

CMD ["php", "-a"]
