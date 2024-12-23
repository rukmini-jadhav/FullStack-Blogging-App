FROM eclipse-temurin:17-jdk-alpine
    
EXPOSE 8080
 
ENV APP_HOME /usr/src/app

# Ensure the directory exists
RUN mkdir -p $APP_HOME

# Copy the JAR file into the container
COPY target/twitter-app-0.0.3-SNAPSHOT.jar $APP_HOME/app.jar

# Set the working directory
WORKDIR $APP_HOME

# Command to run the application
CMD ["java", "-jar", "app.jar"]
