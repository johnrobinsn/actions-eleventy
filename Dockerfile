FROM node:10-alpine
RUN npm config set unsafe-perm true
RUN npm install
COPY entrypoint.sh /
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
