#!/usr/bin/env sh

CURRENT_MASTER_HEAD_HASH=$(git rev-parse --short HEAD)

# build
yarn build
BUILD_DATE=$(date +%F' '%H:%M:%S)

# git remote add origin git:${ACCESS_TOKEN}@github.com:navelorange1999/profile.git
git config user.name "Custom-Github-Action-Bot by @navelorange1999"
git config user.email "qichen1999@qq.com"
git add dist && git commit -m ":rocket: Devlop from ${CURRENT_MASTER_HEAD_HASH}. Build at ${BUILD_DATE}"

git subtree push --prefix dist origin gh-pages