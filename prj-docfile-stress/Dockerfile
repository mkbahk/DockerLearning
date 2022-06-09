FROM ubuntu:18.04
MAINTAINER Moon Kee Bahk <mkbahk@gmail.com>
RUN apt-get update -y; apt-get install stress -y
CMD ["bin/sh", "-c", "stress -c 2"]
