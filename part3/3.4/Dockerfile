FROM docker:dind

WORKDIR /usr/src/app

COPY ./deploy.sh .

RUN chmod +x ./deploy.sh

RUN apk add --no-cache git
RUN apk add --no-cache bash

ENTRYPOINT ["./deploy.sh"]