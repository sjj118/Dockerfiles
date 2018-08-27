FROM node:carbon-slim

LABEL author=sjj118

COPY aptget-sources.list /etc/apt/sources.list
RUN apt-get update
RUN apt-get install -y git

RUN npm install -g cnpm --registry=https://registry.npm.taobao.org
RUN cnpm install hexo-cli -g
WORKDIR /website
RUN hexo init
RUN cnpm install


RUN apt-get install -y pandoc

RUN cnpm install hexo-renderer-pandoc --save
RUN cnpm install hexo-deployer-git --save

CMD ["bash"]
