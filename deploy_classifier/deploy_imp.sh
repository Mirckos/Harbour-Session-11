docker build --platform linux/amd64 -t registry.fly.io/e0789-harbour-ml-solution:v1 .
fly auth docker
docker push registry.fly.io/e0789-harbour-ml-solution:v1

fly machine run registry.fly.io/e0789-harbour-ml-solution:v1 \
  -a e0789-harbour-ml-solution --region fra \
  --port 8000 --cpus 2 --memory 2048 \
  --restart always
