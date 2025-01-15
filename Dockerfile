FROM maven AS buildstage
RUN mkdir /opt/mindcircuit15
WORKDIR /opt/mindcircuit15
COPY . . 
RUN mvn clean install

FROM tomcat
WORKDIR webapps
COPY --from=buildstage /opt/mindcircuit15/target/*.war .
RUN rm -rf ROOT && mv *.war ROOT.war
EXPOSE 8080
