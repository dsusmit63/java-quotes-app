# BASE IMAGE

FROM openjdk:26-ea-jdk-slim

# WORKDIR

WORKDIR /app

# COPY CODE

COPY src/Main.java Main.java
COPY quotes.txt quotes.txt 

# COMPILE

RUN javac Main.java

# EXPOSE PORT 

EXPOSE 8000

# SERVE APPLICATION

CMD ["java","Main"]


