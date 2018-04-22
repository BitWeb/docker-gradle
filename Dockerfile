FROM frolvlad/alpine-oraclejdk8:clean
MAINTAINER BitWeb

MAINTAINER rain@bitweb.ee

ENV GRADLE_VERSION=4.7

RUN apt-get update && apt-get install -qq unzip

RUN wget https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip \
    && unzip gradle-${GRADLE_VERSION}-bin.zip \
    && mv gradle-${GRADLE_VERSION} /opt/gradle \
    && rm gradle-${GRADLE_VERSION}-bin.zip
