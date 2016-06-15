FROM java:latest

ENV APP_PROFILE prod
ENV APP_VERSION 1.0.0.0
#ENV APP_PROPERTIES /docker-helloworld/prod/1.0.0.0/app.properties
ENV APP_PROPERTIES app.properties


# COPY *.jar /docker-helloworld/prod/1.0.0.0
# COPY *.properties /docker-helloworld/prod/1.0.0.0

COPY . /
#COPY *.jar /
#COPY *.properties /

#WORKDIR /docker-helloworld/prod/1.0.0.0

WORKDIR /

# ENTRYPOINT ["java -jar docker-helloworld.jar"]
CMD ["java","-jar","docker-helloworld.jar"]