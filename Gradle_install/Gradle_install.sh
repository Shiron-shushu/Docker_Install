#!/bin/bash
#여기 보이는 gradle-x.x.x.zip의 x.x.x는 최신버전으로 변경 가능
wget https://services.gradle.org/distributions/gradle-7.5.1-bin.zip -P /tmp
sudo unzip -d /opt/gradle /tmp/gradle-*.zip
/opt/gradle/gradle-7.5.1/

#sudo vim /etc/profile.d/gradle.sh

#[gradle.sh 내용]
echo export GRADLE_HOME=/opt/gradle/gradle-7.5.1 > gradle.sh
echo export PATH=${GRADLE_HOME}/bin:${PATH} >> gradle.sh
#wq

sudo chmod +x /etc/profile.d/gradle.sh

source /etc/profile.d/gradle.sh

gradle -v
#명령어를 통해 정상적으로 설치됫는지 확인
