FROM java:8

MAINTAINER rain@bitweb.ee

ENV GRADLE_VERSION=3.4

RUN apt-get update && apt-get install -qq unzip

RUN wget https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip \
    && unzip gradle-${GRADLE_VERSION}-bin.zip \
    && mv gradle-${GRADLE_VERSION} /opt/gradle \
    && rm gradle-${GRADLE_VERSION}-bin.zip
    
