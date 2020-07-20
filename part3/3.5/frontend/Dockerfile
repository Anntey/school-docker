FROM node

USER root

WORKDIR /app

COPY / .

RUN npm install && \
    apt-get purge -y --auto-remove curl && \
    rm -rf /var/lib/apt/lists/* && \
    useradd -m app && \
    chown -R app .

USER app

CMD ["npm", "start"]