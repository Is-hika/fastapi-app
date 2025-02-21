# FastAPI Docker CI/CD
# FastAPI Dockerized CI/CD with GitHub Actions

## Overview
This project demonstrates Continuous Delivery (CD) by automating the creation and deployment of a Dockerized FastAPI application using GitHub Actions. The workflow builds a Docker image, pushes it to Docker Hub, and ensures the application is always deployable.

## Features
- FastAPI server responding with JSON data
- Dockerized application using Ubuntu as base image
- Automated CI/CD pipeline using GitHub Actions
- Pushes Docker images to Docker Hub

## Project Structure
```
.
├── main.py                 # FastAPI server
├── requirements.txt        # Dependencies
├── Dockerfile              # Docker configuration
├── .github/workflows/
│   ├── DockerBuild.yml     # GitHub Actions workflow
├── README.md               # Project documentation
```

## Installation & Running Locally
1. Clone the repository:
   ```bash
   git clone https://github.com/<your-username>/<your-repo>.git
   cd <your-repo>
   ```
2. Install dependencies:
   ```bash
   pip install -r requirements.txt
   ```
3. Run FastAPI server:
   ```bash
   uvicorn main:app --host 0.0.0.0 --port 8000
   ```
4. Open your browser and visit:
   ```
   http://127.0.0.1:8000
   ```

## Docker Build & Run
### Build the Docker Image:
```bash
docker build -t <your-dockerhub-username>/fastapi-app .
```
### Run the Container:
```bash
docker run -p 8000:8000 <your-dockerhub-username>/fastapi-app
```
### Verify the Server:
```bash
curl http://localhost:8000
```

## GitHub Actions Workflow
The `.github/workflows/DockerBuild.yml` file automates the Docker image build and push process.

### Workflow Steps:
1. **Trigger:** Runs on every `push` to the repository.
2. **Checkout:** Clones the repository.
3. **Docker Authentication:** Logs into Docker Hub using a secret token.
4. **Build & Push:** Builds and pushes the Docker image to Docker Hub.

### Setting Up GitHub Secrets
1. Go to your repository **Settings** → **Secrets and Variables** → **Actions**.
2. Click **New Repository Secret**.
3. Add `DOCKERTOKEN` with your Docker Hub access token.

## Submission
- **GitHub Repository URL:** [GitHub Repo](https://github.com/<your-username>/<your-repo>)
- **Docker Hub Image URL:** [Docker Image](https://hub.docker.com/r/<your-dockerhub-username>/fastapi-app)

## Notes
- Ensure Docker is installed and running before executing Docker commands.
- If using Podman instead of Docker, use the alias: `alias docker=podman`.
- Modify `<your-username>` and `<your-dockerhub-username>` in commands as needed.

---
