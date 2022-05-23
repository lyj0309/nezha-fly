#!/bin/sh
echo -e "nameserver 127.0.0.11\nnameserver 8.8.8.8\nnameserver 223.5.5.5\n" > /etc/resolv.conf

if [ -f /dashboard/data/config.yaml ]; then
	echo "配置文件存在，跳过配置"
else
	echo "配置文件不存在，初始化默认配置"
	cp /dashboard/config.yaml /dashboard/data/config.yaml
fi

# Restore the database if it does not already exist.
# if [ -f /data/db ]; then
# 	echo "Database already exists, skipping restore"
# else
# 	echo "No database found, restoring from replica if exists"
# 	litestream restore -v -if-replica-exists -o /data/db "${REPLICA_URL}"
# fi

# # Run litestream with your app as the subprocess.
# exec litestream replicate -exec "/usr/local/bin/myapp -dsn /data/db"

/dashboard/app