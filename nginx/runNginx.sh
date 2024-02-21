# 使用端口映射,无效
: '
docker run -d --name nginx \
-p 8080:80 \
-p 8000:8000 \
-v $PWD/html:/usr/share/nginx/html \
-v $PWD/log:/var/log/nginx \
-v $PWD/nginx.conf:/etc/nginx/nginx.conf \
nginx
'

# 使用host模式
docker run -d --name nginx \
--network host \
-v $PWD/html:/usr/share/nginx/html \
-v $PWD/log:/var/log/nginx \
-v $PWD/nginx.conf:/etc/nginx/nginx.conf \
nginx
: '
stream {
    upstream MyServer {
        server 127.0.0.1:6000 weight = 1 max_fails = 3 fail_timeout = 30s;
        server 127.0.0.1:6000 weight = 1 max_fails = 3 fail_timeout = 30s;
    }

    server {
        proxy_connect_timeout 1s;
        listen 8000;
        proxy_pass MyServer;
        tcp_nodelay on;
    }
'




