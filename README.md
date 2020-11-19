## Laravel+Laravel-admin整形美容电商+内容发布系统

### 安装说明

##### 版本要求

PHP >= 7.0

Laravel >= 7.2

Laravel-admin  = 1.7.15



###### 1、克隆代码

```
git clone https://github.com/cj316446834/xinyue
```

###### 2、安装 php 依赖

​	① 使用阿里云镜像：

```
composer config -g repo.packagist composer https://mirrors.aliyun.com/composer/
```

​	② 进入项目目录使用 composer 安装依赖：

```
composer install
```

###### 3、安装 Nodejs 依赖

​	① 安装 Nodejs 依赖，同样先配置镜像加速：

```
yarn config set registry https://registry.npm.taobao.org
```

​	② 使用 yarn 命令安装 Nodejs 依赖：

```
SASS_BINARY_SITE=http://npm.taobao.org/mirrors/node-sass yarn
```

​	③ 安装完成后编译前段代码：

```
yarn dev
```

###### 4、配置 .env 文件

​	① 先从 .env.example 复制一份出来：

```
cp .env.example .env
```

​	② 修改 .env 文件

```
APP_NAME=            //网站名
.
.
.
APP_URL=              //域名
.
.
.
//数据库配置
DB_DATABASE=
DB_USERNAME=
DB_PASSWORD=
.
.
.
QUEUE_CONNECTION=redis  //消息队列
.
.
.
//邮件配置
MAIL_MAILER=smtp
MAIL_HOST=127.0.0.1
MAIL_PORT=1025
MAIL_USERNAME=null
MAIL_PASSWORD=null
MAIL_ENCRYPTION=null
MAIL_FROM_ADDRESS=
MAIL_FROM_NAME="${APP_NAME}"
.
.
.
//QQ登录配置
QQ_KEY=
QQ_SECRET=
QQ_REDIRECT_URI={APP_URL}/user/get_user_info  //回调地址

WEIBO_KEY=
WEIBO_SECRET=
WEIBO_REDIRECT_URI={APP_URL}/auth/weibo  //回调地址
```

​	③ 然后我们通过 Laravel 的命令自动生成 APP_KEY 值：

```
php artisan key:generate
```

###### 5、创建软链

```
php artisan storage:link
```

###### 6、初始化数据库

​	① 执行数据库迁移：

```
php artisan migrate
```

​	② 导入管理后台数据：

```
php artisan db:seed --class=AdminTablesSeeder
```

​	③ 创建后台用户：

```
php artisan admin:create-user
```

​	注：输入密码的时候并不会有回显，输入密码之后回车即可。

​	后台登录地址 /admin/auth/login

------

### 功能说明

1、用户管理

2、收货地址

3、栏目管理

4、文章管理

5、QQ、微博登录

6、订单 购物车模块 

7、秒杀、团购 