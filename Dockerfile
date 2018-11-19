FROM storm:1.2.2

MAINTAINER Dylan <bbcheng@ikuai8.com>

# Set timezone to China
RUN apk update \
    && apk add tzdata \
    && cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
    && echo "Asia/Shanghai" > /etc/timezone \
    && apk del tzdata

