CI/CD Pipeline using Jenkins and Docker
📌 Project Overview

This project demonstrates an end-to-end CI/CD pipeline that automates the build, testing, and deployment of an application using Jenkins and Docker.

The goal of this project is to streamline the software delivery process by implementing a continuous integration and continuous delivery workflow with automated testing, containerization, and deployment.

🏗️ Architecture
Developer → GitHub → Jenkins Pipeline → Build → Test → Docker Build → Docker Run → User

🛠️ Tech Stack
CI/CD Tool: Jenkins (Pipeline/Groovy)
Containerization: Docker
Version Control: Git, GitHub
Code Quality: SonarQube
Artifact Repository: JFrog Artifactory
Build Tools: Maven / Gradle
OS: Linux

🔄 CI/CD Workflow
Developer pushes code to GitHub
Jenkins detects changes and triggers pipeline
Code is fetched and build process starts (Maven/Gradle)
Unit tests are executed
Code quality is analyzed using SonarQube
Application is packaged (JAR/WAR)
Artifact is stored in JFrog Artifactory
Docker image is built
Container is deployed and exposed to users
Acceptance test script validates deployment

📦 Project Structure
.
├── Dockerfile
├── Jenkinsfile
├── README.md
├── scripts/
│   └── acceptance_test.sh
├── src/

⚙️ Setup & Installation
1️⃣ Clone Repository
git clone https://github.com/pratikbadhe8483/cicd-jenkins-docker-project.git
cd cicd-jenkins-docker-project
2️⃣ Build Docker Image
docker build -t cicd-app .
3️⃣ Run Container
docker run -d -p 8080:80 cicd-app
4️⃣ Access Application

Open browser:
http://localhost:8080

🔧 Jenkins Setup (Using Docker)
Run Jenkins Container
docker run -d \
  -p 8080:8080 \
  -p 50000:50000 \
  --name jenkins \
  jenkins/jenkins:lts

Access Jenkins
http://<server-ip>:8080

⚙️ Pipeline Configuration
Create Pipeline Job in Jenkins
Select Pipeline script from SCM
Add GitHub repository URL
Jenkins automatically executes Jenkinsfile

📜 Jenkinsfile Explanation
Build Stage → Compiles application
Test Stage → Runs unit tests
Docker Build → Creates Docker image
Deploy Stage → Runs container
Post Actions → Cleanup containers

🧪 Acceptance Test Script
Script verifies application availability:
curl http://localhost:8080
✔ Ensures deployment success

⚠️ Challenges Faced
Docker permission issues → solved using user group configuration
Git authentication errors → resolved using Personal Access Token
Jenkins plugin configuration issues → fixed via proper setup
Container port conflicts → resolved using correct port mapping

📚 Key Learnings
CI/CD pipeline automation using Jenkins
Docker containerization and deployment
Integration of SonarQube for code quality
Artifact management using Artifactory
End-to-end DevOps workflow implementation

🌐 Output
Application successfully deployed in a Docker container and accessible via:
http://localhost:8080

🔗 GitHub Repository
https://github.com/pratikbadhe8483/cicd-jenkins-docker-project

👨‍💻 Author
Pratik Badhe
DevOps & Cloud Enthusiast
