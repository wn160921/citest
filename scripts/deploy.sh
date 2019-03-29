#!/usr/bin/env bash
apt install sshpass
cd web
ng build --prod
cd dist
mv web/* ././../public/
cd ../../
sbt dist
sshpass -p Wang1234561s!! scp -P 22 -o stricthostkeychecking=no -r target/universal/citest-1.0.0-SNAPSHOT.zip root@106.13.54.28:/root/
