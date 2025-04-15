# MyWebApp CI/CD Pipeline

This project implements a Jenkins-based CI/CD pipeline for `MyWebApp`, a Maven-based Java web application. The pipeline automates the build, code quality analysis, test coverage, and deployment processes.

## Prerequisites

Before running this pipeline, ensure the following are set up:

- Jenkins with required plugins:
  - Maven Integration
  - Pipeline
  - SonarQube Scanner
  - JaCoCo
  - Deploy to container
- Maven installed and configured in Jenkins (Named: `Maven3`)
- SonarQube server integration in Jenkins (Named: `SonarQube`)
- Tomcat server running and reachable at: `http://ec2-54-165-219-164.compute-1.amazonaws.com:8080`
- Proper credentials added in Jenkins for Tomcat deployment

## Pipeline Stages

### 1. Build
- Cleans and builds the project using Maven.
- Executes:  
  ```bash
  mvn clean install -f MyWebApp/pom.xml
