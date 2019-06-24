FROM cpchou/ubuntu_jdk8
# download openjdk from https://github.com/ojdkbuild/ojdkbuild

RUN rm -rf /opt/jdk
RUN wget https://github.com/ojdkbuild/ojdkbuild/releases/download/1.8.0.91-3/java-1.8.0-openjdk-1.8.0.91-1.b14.el6.x86_64.zip
RUN cd /
RUN unzip ../java-1.8.0-openjdk-1.8.0.91-1.b14.el6.x86_64.zip
RUN ln -sf  /java-1.8.0-openjdk-1.8.0.91-1.b14.el6.x86_64 /opt/jdk
RUN rm -f java-1.8.0-openjdk-1.8.0.91-1.b14.el6.x86_64.zip
RUN rm -f /opt/jdk/src.zip

#issue: error while loading shared libraries: libjpeg.so.62: cannot open shared object file: No such file or directory
RUN apt-get install -y libjpeg62

#issue: java.lang.NoClassDefFoundError: Could not initialize class sun.awt.X11FontManager
#安裝 font
