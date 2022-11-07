#!/usr/bin/env sh
set -x #看错误日志

#打包项目
npm run build

#进入打包后的文件
cd dist

git init
git add -A 
git commit -m 'auto deploy'

#将打包后的文件推送到指定分支
git push -f https://github.com/JionDou/small-essay.git main:static-pages