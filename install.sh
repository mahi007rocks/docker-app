#!/bin/sh
sudo apt-get update && \
    apt-get install -y \
    curl \
    nano \
    openssl \
    libreadline6 \
    libreadline6-dev \
    openssl \
    zlib1g \
    zlib1g-dev \
    libssl-dev \
    libyaml-dev \
    libsqlite3-0 \
    libsqlite3-dev \
    sqlite3 \
    libxml2-dev \
    libxslt-dev \
    autoconf \
    libc6-dev \
    ncurses-dev \
    automake \
    libtool \
    bison \
    subversion \
    pkg-config \
    build-essential \
    git-core \
    libmysqlclient-dev \
    libmagickwand-dev \
    imagemagick \
    gnupg2 \
    wget \
    libgdbm-dev \
    libncurses5-dev \
    automake \
    libtool \
    bison \
    libffi-dev \
    && apt-get clean

gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
cd /tmp && \curl -sSL https://get.rvm.io -o rvm.sh
cat /tmp/rvm.sh | bash -s stable

#source /usr/local/rvm/scripts/rvm

rvm list known
gem install nokogiri -v 1.8.2
#sudo gem install nokogiri -v '1.4.7'
rvm install 2.5.1
source /usr/local/rvm/scripts/rvm
gem install rails 
#ruby --version
echo 'gem: --no-rdoc --no-ri' >> "$HOME/.gemrc"

cd /home/testapp/docker-app

gem install bundle
bundle install
