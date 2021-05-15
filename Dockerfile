FROM makinhs/nestjs-base:latest AS dependencies

WORKDIR /usr/src/app

# install dependencies
RUN yarn --frozen-lockfile

COPY . .

RUN yarn install