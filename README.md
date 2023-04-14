# nezha-fly
## 部署哪吒面板到fly.io

## 原理
通过基于原哪吒面板的docker镜像，在此基础上自动添加config文件，其中config文件在github secrets中

两个secrets 
`CONFIG`: 哪吒面板配置文件
`FLY_API_TOKEN`: fly的api token

## 第一次部署
1. 需要把`action`中的`if: ${{ env.new_release == 'yes'  }}`注释掉，部署成功之后再注回来
```yml
      - name: deploy
        if: ${{ env.new_release == 'yes'  }}
        run: |
          echo '${{ secrets.CONFIG }}' > ./config.yaml && ls
          flyctl deploy --remote-only
```
2. 需要先运行`fly launch`创建一个app，名字填`fly.toml`里面的, 我的是`fakev-status`可以改，但需要保持一样
## 展示网址 （<https://status.fakev.cn>）
