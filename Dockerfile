FROM jenkins/jenkins:alpine

USER root
RUN apk -U add docker

USER jenkins
COPY plugins.txt /usr/share/jenkins/ref/plugins.txt
RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/plugins.txt
COPY casc /var/jenkins_home/casc
# Skip initial setup
ENV JAVA_OPTS -Djenkins.install.runSetupWizard=false