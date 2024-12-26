FROM node:18-alpine
#RUN npm config set unsafe-perm true
RUN npm cache clean --force
RUN npm install -g @11ty/eleventy
RUN npm install
COPY entrypoint.sh /
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
