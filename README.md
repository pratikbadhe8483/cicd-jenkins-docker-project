# 🚀 CI/CD Pipeline using Jenkins and Docker

---

## 📌 Project Overview

This project demonstrates an end-to-end CI/CD pipeline that automates the build, testing, and deployment of an application using Jenkins and Docker.

The goal of this project is to streamline the software delivery process by implementing continuous integration and continuous delivery with automated testing, containerization, and deployment.

---

## 🏗️ Architecture

```
Developer → GitHub → Jenkins Pipeline → Build → Test → Docker Build → Docker Run → User
```

---

## 🛠️ Tech Stack

* **CI/CD Tool:** Jenkins (Pipeline/Groovy)
* **Containerization:** Docker
* **Version Control:** Git, GitHub
* **Code Quality:** SonarQube
* **Artifact Repository:** JFrog Artifactory
* **Build Tools:** Maven / Gradle
* **OS:** Linux

---

## 🔄 CI/CD Workflow

1. Developer pushes code to GitHub
2. Jenkins detects changes and triggers pipeline
3. Code is fetched and build process starts (Maven/Gradle)
4. Unit tests are executed
5. Code quality is analyzed using SonarQube
6. Application is packaged (JAR/WAR)
7. Artifact is stored in JFrog Artifactory
8. Docker image is built
9. Container is deployed and exposed to users
10. Acceptance test script validates deployment

---

## 📦 Project Structure

```
.
├── Dockerfile
├── Jenkinsfile
├── README.md
├── scripts/
│   └── acceptance_test.sh
├── src/
```

---

## ⚙️ Setup & Installation

### 1️⃣ Clone Repository

```bash
git clone https://github.com/pratikbadhe8483/cicd-jenkins-docker-project.git
cd cicd-jenkins-docker-project
```

---

### 2️⃣ Build Docker Image

```bash
docker build -t cicd-app .
```

---

### 3️⃣ Run Container

```bash
docker run -d -p 8080:80 cicd-app
```

---

### 4️⃣ Access Application

Open in browser:

```
http://localhost:8080
```

---

## 🔧 Jenkins Setup (Using Docker)

### Run Jenkins Container

```bash
docker run -d \
  -p 8080:8080 \
  -p 50000:50000 \
  --name jenkins \
  jenkins/jenkins:lts
```

---

### Access Jenkins

```
http://<server-ip>:8080
```

---

## ⚙️ Pipeline Configuration

* Create a **Pipeline Job** in Jenkins
* Select **Pipeline script from SCM**
* Add GitHub repository URL
* Jenkins automatically executes the `Jenkinsfile`

---

## 📜 Jenkinsfile Explanation

* **Build Stage** → Compiles application
* **Test Stage** → Runs unit tests
* **Docker Build** → Creates Docker image
* **Deploy Stage** → Runs container
* **Post Actions** → Cleans up resources

---

## 🧪 Acceptance Test Script

```bash
curl http://localhost:8080
```

✔ Verifies application availability after deployment

---

## ⚠️ Challenges Faced

* Docker permission issues → resolved using user group configuration
* Git authentication errors → fixed using Personal Access Token
* Jenkins plugin configuration issues → resolved with proper setup
* Container port conflicts → fixed using correct port mapping

---

## 📚 Key Learnings

* CI/CD pipeline automation using Jenkins
* Docker containerization and deployment
* Code quality integration using SonarQube
* Artifact management using Artifactory
* End-to-end DevOps workflow implementation

---

## 🌐 Output

Application successfully deployed and accessible at:

```
http://localhost:8080
```

---

## 🔗 GitHub Repository

https://github.com/pratikbadhe8483/cicd-jenkins-docker-project

---

## 👨‍💻 Author

**Pratik Badhe**
DevOps & Cloud Enthusiast

