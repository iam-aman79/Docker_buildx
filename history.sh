sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin -y
sudo systemctl start docker
sudo systemctl enable docker
systemctl status docker.service 
docker images
ls
docker ps
docker buildx build -t hello .
docker images
docker run hello
docker ps
docker buildx build --platform linux/amd64,linux/arm64 -t hello-app .
docker images
ls
vi Dockerfile 
docker images --format "table {{.Repository}}\t{{.Tag}}\t{{.ID}}\t{{.Architecture}}"
docker images --format "table {{.Repository}}\t{{.Tag}}\t{{.ID}}"
vi Dockerfile 
docker buildx build --platform linux/amd64,linux/arm64 -t hello-app .
docker images
docker buildx imagetools inspect hello-app:latest
docker inspect hello-app --format '{{.Architecture}}'
docker run hello
docker login
docker buildx build   --platform linux/amd64,linux/arm64   -t apsp/test-buildx/hello-app:latest   --push .
docker buildx build   --platform linux/amd64,linux/arm64   -t apsp/test-buildx:latest   --push .
docker buildx imagetools inspect apsp/test-buildx:latest
# for testing
