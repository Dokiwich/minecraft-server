# Minecraft Server chạy trên Render
FROM openjdk:17-jdk-slim
WORKDIR /server
RUN apt-get update && apt-get install -y wget
RUN wget -O server.jar https://papermc.io/api/v2/projects/paper/versions/1.20.1/builds/100/downloads/paper-1.20.1-100.jar
RUN echo "eula=true" > eula.txt
EXPOSE 25565
CMD ["java", "-Xms1G", "-Xmx1G", "-jar", "server.jar", "nogui"]
