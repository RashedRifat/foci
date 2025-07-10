FROM node:24-alpine

ENV WORKDIR="/app"

RUN apk add --no-cache bash openssl
RUN npm install -g prisma

# COPY package.json package-lock.json* ./
# RUN npm install

COPY . ${WORKDIR}

# for NextJs
EXPOSE 3000

CMD [ "sh" ]
