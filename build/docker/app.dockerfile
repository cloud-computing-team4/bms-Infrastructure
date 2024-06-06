FROM gradle:7.6-jdk17

WORKDIR /home/bms

RUN git clone https://github.com/cloud-computing-team4/bms-springboot-backend.git .

ENV LANG=ko_KR.UTF-8 \
    LANGUAGE=ko_KR.UTF-8 \
    LC_ALL=ko_KR.UTF-8

RUN ln -sf /usr/share/zoneinfo/Asia/Seoul /etc/localtime

COPY docker/data/entrypoint.sh /entrypoint.sh