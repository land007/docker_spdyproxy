FROM debian:8
MAINTAINER Jia Yiqiu <yiqiujia@hotmail.com>

#CMD npm install -g spdyproxy
#ENTRYPOINT [ "npm", "install", "-g", "spdyproxy" ]
#RUN npm install -g spdyproxy

ADD node /node/node
ADD node_modules.tar.gz /node
ADD proxy-stuff /node/proxy-stuff

RUN chmod +x /node/node
RUN chmod +x /node/proxy-stuff/start-container

WORKDIR /node

EXPOSE 443

CMD /node/proxy-stuff/start-container