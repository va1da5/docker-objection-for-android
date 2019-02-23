FROM ubuntu:18.04

ENV DEBIAN_FRONTEND noninteractive
ENV LC_ALL C.UTF-8
ENV LANG C.UTF-8
ENV PATH $PATH:/opt/platform-tools

RUN apt update && apt upgrade -yf && \
    apt install -y  software-properties-common && \
    apt install -y python3.7 python3-pip unzip aapt zipalign && \
    add-apt-repository ppa:webupd8team/java -y && \
    apt update && \
    echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections && \
    apt install -y oracle-java8-installer && \
    apt clean && \
    rm -rf /var/lib/apt/lists/* && \
    pip3 install -U pip && \
    pip install objection && \
    mkdir /data

WORKDIR /opt

RUN wget https://dl.google.com/android/repository/platform-tools-latest-linux.zip && \
    unzip platform-tools-latest-linux.zip && \
    rm -rf platform-tools-latest-linux.zip && \
    wget https://raw.githubusercontent.com/iBotPeaches/Apktool/master/scripts/linux/apktool -O /usr/local/bin/apktool && \
    wget https://bitbucket.org/iBotPeaches/apktool/downloads/apktool_2.3.4.jar -O /usr/local/bin/apktool.jar && \
    chmod +x /usr/local/bin/apktool /usr/local/bin/apktool.jar

RUN bash -c "echo 'echo -ne \"\e[93m[?]\e[0m Frida Gadgets/Servers: \e[34mhttps://github.com/frida/frida/releases\e[0m\n\"' >> /root/.bashrc" && \
    bash -c "echo 'echo -ne \"\e[93m[?]\e[0m Objection Documentation: \e[34mhttps://github.com/sensepost/objection/wiki\e[0m\n\"' >> /root/.bashrc" && \
    bash -c "echo 'echo -ne \"\e[93m[?]\e[0m ADB Cheat Sheet: \e[34mhttps://devhints.io/adb\e[0m\n\"' >> /root/.bashrc"


WORKDIR /data
