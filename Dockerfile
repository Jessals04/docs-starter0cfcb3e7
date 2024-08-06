FROM node:18

# Install docuo
RUN npm i -g @spreading/docuo

WORKDIR /docs

COPY . /src
COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

EXPOSE 3000

ENTRYPOINT ["/entrypoint.sh"]
