FROM cpchou/ubuntu_jdk8
# download openjdk from https://github.com/ojdkbuild/ojdkbuild

RUN rm -rf /opt/jdk
RUN wget https://github.com/ojdkbuild/ojdkbuild/releases/download/1.8.0.91-3/java-1.8.0-openjdk-1.8.0.91-1.b14.el6.x86_64.zip
RUN cd /
RUN unzip ../java-1.8.0-openjdk-1.8.0.91-1.b14.el6.x86_64.zip
RUN ln -sf  /java-1.8.0-openjdk-1.8.0.91-1.b14.el6.x86_64.zip /opt/jdk
RUN rm -f java-1.8.0-openjdk-1.8.0.91-1.b14.el6.x86_64.zip
RUN rm -f /opt/jdk/src.zip
