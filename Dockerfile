FROM node:18-alpine
RUN npm install -g @11ty/eleventy
COPY entrypoint.sh /
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
