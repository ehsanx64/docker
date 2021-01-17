FROM node:14.15.4-buster
ENV container docker
RUN npm install -g express-generator; \
    npm install -g pm2@latest


VOLUME [ "/sys/fs/cgroup" ]
CMD ["/usr/sbin/init"]