#!/usr/bin/env bash

export NVM_DIR="$HOME/.nvm"

mkdir -p $NVM_DIR

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash

source ~/.nvm/nvm.sh

nvm install --lts
nvm use --lts

npm install -g pnpm yarn
