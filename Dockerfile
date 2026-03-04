# BASE IMAGE
FROM eclipse-temurin:17-jdk-jammy

# WORKDIR
WORKDIR /app

# COPY CODE
COPY src/Main.java Main.java
COPY quotes.txt quotes.txt

# COMPILE
RUN javac Main.java

# EXPOSE PORT
EXPOSE 8000

# RUN & SERVE APLLICATION
CMD ["java","Main"]
