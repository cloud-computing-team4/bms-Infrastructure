#!/bin/sh
cd /home/bms

chmod +x ./gradlew

./gradlew build

java -jar -Duser.timezone=Asia/Seoul /home/bms/build/libs/bms-0.0.1-SNAPSHOT.jar