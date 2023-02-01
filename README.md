# git

1.修改vscode连接的git仓库路径

    把HTTPS改成git:
        settings中输入Github:Git Protocol，选择ssh

2.create a new repository on the command line

    echo "# FPGA" >> README.md
    git init
    git add README.md
    git commit -m "first commit"
    git branch -M main
    git remote add origin git@github.com:tiptop2728/FPGA.git
    git push -u origin main

3.push an existing repository from the command line

    git remote add origin git@github.com:tiptop2728/FPGA.git
    git branch -M main
    git push -u origin main

4.初始化

    - 安装git
    - cd到要初始化的文件夹
    - 输入用户名和邮箱：
        git config --global user.name "Junk Chen"
        git config --global user.email junkchen@vip.qq.com
    - 配置SSH公钥
       输入：ssh-keygen -t rsa -C "619241658@qq.com"  加上三次回车生成秘钥
       打开c盘user下的.ssh/id_rsa.pub，把公钥复制到GitHub的Settings,SSH and GPG keys中

# vscode
    1.文件路径不折叠
    
    settings 中搜索 Explore:Compact Folders，把勾去掉
