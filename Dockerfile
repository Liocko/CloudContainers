FROM jenkins/jenkins:lts

USER root

RUN apt-get update && apt-get install -y \
    git \
    curl \
    && apt-get clean

USER jenkins

RUN jenkins-plugin-cli --plugins git pipeline-stage-view
