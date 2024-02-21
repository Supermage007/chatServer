docker run --name redischat \
-p 6379:6379 \
-v $PWD/redis.conf:/etc/redis/redis.conf \
-v $PWD/data:/data \
-d redis #redis-server /etc/redis/redis.conf --appendonly yes

# 参考 https://cloud.tencent.com/developer/article/1997596