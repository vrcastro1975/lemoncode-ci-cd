FROM jenkins/jenkins:lts

USER root

# Reference install gradle: https://medium.com/@migueldoctor/how-to-create-a-custom-docker-image-with-jdk8-maven-and-gradle-ddc90f41cee4
RUN apt update

# Gradle version
ARG GRADLE_VERSION=7.5

# Define the URL where gradle can be downloaded
ARG GRADLE_BASE_URL=https://services.gradle.org/distributions

# Define the SHA key to validate the gradle download
ARG GRADLE_SHA=cb87f222c5585bd46838ad4db78463a5c5f3d336e5e2b98dc7c0c586527351c2

# Create the directories, download gradle, validate the download
# install it remove download file and set links
RUN mkdir -p /usr/share/gradle /usr/share/gradle/ref \
  && echo "Downloading gradle hash" \
  && curl -fsSL -o /tmp/gradle.zip ${GRADLE_BASE_URL}/gradle-${GRADLE_VERSION}-bin.zip \
  && echo "Checking download hash" \
  && echo "${GRADLE_SHA} /tmp/gradle.zip" | sha256sum -c - \
  && echo "Unziping gradle" && unzip -d /usr/share/gradle /tmp/gradle.zip \
  && echo "Clenaing and setting links" && rm -f /tmp/gradle.zip \
  && ln -s /usr/share/gradle/gradle-${GRADLE_VERSION} /usr/bin/gradle

ENV GRADLE_VERSION=7.5
ENV GRADLE_HOME=/usr/bin/gradle
ENV PATH=$PATH:$GRADLE_HOME/bin