# nezha-fly
## 部署哪吒面板到fly.io

## 原理
通过基于原哪吒面板的docker镜像，在fly.io中mount做持久化储存 

https://fly.io/docs/volumes/overview/

action secrets 
`FLY_API_TOKEN`: fly的api token

## 首次部署

1. 先运行`fly launch`创建一个app，名字填`fly.toml`里面的, 我的是`fakev-status`可以改，但需要保持一样
2. 要手动触发action
3. 打开网站修改设置，比如站点名称，url
## 展示网址 （<https://status.fakev.cn>）
