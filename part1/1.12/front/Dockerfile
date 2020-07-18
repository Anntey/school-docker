FROM ubuntu

USER root

RUN apt-get update && apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash
RUN apt install -y nodejs

COPY / .

ENV API_URL=http://localhost:8000

RUN npm install

EXPOSE 5000

CMD ["npm", "start"]
