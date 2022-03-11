ARG USER_NAME='local-user'

FROM node:16-alpine3.14
RUN apk add bash
WORKDIR /home/$USER_NAME
COPY . .
RUN chmod u+x ./start.sh
CMD ["./start.sh"]
