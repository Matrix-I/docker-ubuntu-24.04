#!/bin/bash

set -e
set -v

# change to /tmp so that the command will not failed if they create any file in current directory.
cd /tmp

# Update latest lib
apt update && apt upgrade -y

# install essential tools.
apt install -y wget \
        curl \
        git zsh \
        net-tools \
        ca-certificates \
        parallel \
        tmux \
        htop \
        vim \
        openjdk-17-jdk \
        maven \
        jq \
        language-pack-en

cd /root

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Download zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions.git ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions