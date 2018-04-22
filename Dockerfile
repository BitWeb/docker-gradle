FROM frolvlad/alpine-oraclejdk8:cleaned

MAINTAINER rain@bitweb.ee

ENV GRADLE_VERSION=4.7

RUN wget https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip \
    && unzip -d /opt/gradle gradle-${GRADLE_VERSION}-bin.zip \
    && rm gradle-${GRADLE_VERSION}-bin.zip
