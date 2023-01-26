FROM mongo:latest
RUN apt update -y &&\
    apt upgrade -y &&\
    apt install wget -y \
    gnupg -y\
    openjdk-11-jdk -y\
    maven -y
RUN wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add - \ 
    && echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list
RUN apt-get update && apt-get -y install google-chrome-stable