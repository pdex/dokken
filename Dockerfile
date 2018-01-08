FROM debian

# Install packages.
RUN apt-get update  -y \
 && apt-get install -y git cmake vim make wget gnupg libz-dev emacs \
 openjdk-8-jdk maven

RUN ls /file/not/found

# copy the jdk.
#COPY jdk-9_linux-x64_bin.tar.gz /opt/jdk-9_linux-x64_bin.tar.gz

#RUN cd opt && tar -xvzf jdk-9_linux-x64_bin.tar.gz && rm jdk-9_linux-x64_bin.tar.gz

#ENV JAVA_HOME=/opt/jdk-9
#ENV PATH /opt/jdk-9/bin:${PATH}

# These volumes should be mounted on the host.
VOLUME /home/
WORKDIR /home
