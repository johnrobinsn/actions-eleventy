FROM node:18-alpine
#RUN npm config set unsafe-perm true
RUN rm package-lock.json
RUN npm cache clean --force
RUN npm install -g @11ty/eleventy
RUN npm update && npm i
COPY entrypoint.sh /
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
