mkdir /opt/jdk
tar -zxf jdk-8u66-linux-x64.tar.gz -C /opt/jdk
update-alternatives --install /usr/bin/java java /opt/jdk/jdk1.8.0_66/bin/java 100
update-alternatives --install /usr/bin/javac javac /opt/jdk/jdk1.8.0_66/bin/javac 100
java -jar JabRef-3.2.jar
