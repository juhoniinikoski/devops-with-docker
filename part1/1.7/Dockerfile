FROM ubuntu:22.04

RUN apt update
RUN apt install -y curl

WORKDIR /usr/src/app

COPY script.sh .

RUN chmod +x script.sh

CMD ["bash", "./script.sh"]