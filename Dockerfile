FROM node:carbon-slim

LABEL author=sjj118

RUN apt-get update
RUN apt-get install -y git
RUN wget https://github.com/jgm/pandoc/releases/download/2.7.3/pandoc-2.7.3-1-amd64.deb; dpkg -i pandoc-2.7.3-1-amd64.deb; rm pandoc-2.7.3-1-amd64.deb

RUN npm install -g cnpm --registry=https://registry.npm.taobao.org
RUN cnpm install hexo-cli -g
WORKDIR /website
RUN hexo init
RUN cnpm install

RUN cnpm install hexo-renderer-pandoc --save
RUN cnpm install hexo-deployer-git --save

CMD ["bash"]
