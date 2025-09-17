# .gitpod.Dockerfile
FROM gitpod/workspace-full:latest

# Install Docker inside GitPod workspace (Docker-in-Docker)
USER root
RUN apt-get update && \
    apt-get install -y docker.io docker-compose && \
    rm -rf /var/lib/apt/lists/*

# Enable non-root docker usage
RUN groupadd docker || true \
 && usermod -aG docker gitpod

USER gitpod
