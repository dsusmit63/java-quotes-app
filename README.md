
# Java-Quotes-App

This project is a simple Java-based HTTP server that serves random motivational quotes via a REST API. The quotes are externalized to a quotes.txt file for easy customization.



## Features

- Serves random motivational quotes in JSON format.
- Uses an external quotes.txt file for configurable quotes.
- Dockerized for easy deployment.



## Requirements

- Java 17+
- Maven (if building from source)
- Docker (for containerized deployment)

## Usage/Examples

## Running Locally

 1. Clone the repository:

```bash
git clone https://github.com/LondheShubham153/java-quotes-app.git
cd java-quotes-app

```

 2. Ensure quotes.txt exists in the project directory and contains quotes (one per line).
 3. Compile and run the application:
 ```bash
javac src/Main.java -d out
java -cp out Main

```
 4. The server will start on http://localhost:8000

## Running With Docker
 1. Build the docker image:
 ```bash
docker build -t java-quotes-app:latest .
```
 2. Run the container:
 ```bash
docker run -d -p 8000:8000 --name java-quotes-app java-quotes-app:latest
```
 3. Access the application at http://localhost:8000

## File Structure
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
## Customizing quotes
To customize the quotes, edit quotes.txt and restart the application. Each quote should be on a new line.



## Author

- [dsusmit63](https://www.github.com/dsusmit63)


