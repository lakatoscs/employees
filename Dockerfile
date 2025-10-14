# image alapja
FROM eclipse-temurin:21.0.8_9-jdk
# letrhozzuk a munkakonyvtarat es bele is all a working dirbe
WORKDIR /app
# bemasoljuk a jar file-t a kontenerbe
COPY target/*.jar employees.jar
# barmilyen linux parancs - runtime
#RUN ls -la /
# build time parancs
CMD ["java", "-jar", "employees.jar"]