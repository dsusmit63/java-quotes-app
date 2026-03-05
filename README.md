# Java-Quotes-App

A lightweight Java-based HTTP server that serves random motivational quotes via a REST API.

Quotes are externalized in a quotes.txt file, making them easy to customize without modifying the source code.

## Features
- Serves random motivational quotes in JSON format
- Uses an external quotes.txt file for configurable quotes
- Lightweight HTTP server (no external frameworks)
- Dockerized for easy containerized deployment

## Requirements
- Java (JDK 21 recommended)
- Built-in Java HTTP server
- Docker

## Project Structure

```bash
project-root/
│── src/
│   └── Main.java
│── quotes.txt
│── Dockerfile
│── README.md
│── target/
│   └── myapp.jar (if using Maven build)
```

## Running the Application

### Running Locally
1. Clone the repository:
```bash
git clone https://github.com/dsusmit63/java-quotes-app.git
cd java-quotes-app
```
2. Compile and run the application:
```bash
javac src/Main.java -d out
java -cp out Main
```
3. The server will start on  http://localhost:8000

### Running With Docker

1. Clone the repository:
```bash
git clone https://github.com/dsusmit63/java-quotes-app.git
cd java-quotes-app
```
2. Build the docker image:
```bash
docker build -t java-quotes-app:latest .                             ### Build Docker Image using Dockerfile
or
docker build -f Dockerfile.multistage -t java-quotes-app:latest .    ### Build Docker Image using Multistage Dockerfile
```
3. Run the container:
```bash
docker run -d -p 8000:8000 --name java-quotes-app java-quotes-app:latest
```
4. Access the application at  http://localhost:8000

## Customize Quotes
To customize the quotes, edit quotes.txt and restart the application (or rebuild container if using docker).Each quote 
should be on a new line.

## Author
Susmit Das
https://github.com/dsusmit63
