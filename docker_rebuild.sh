echo START
cd docker
docker-compose down --remove-orphans
cd ..
docker rmi harmonics-api
docker build . -t harmonics-api -f docker/Dockerfile #--no-cache
cd docker
./docker_compose.sh
cd ..
echo END
docker logs -f docker_harmonics-api_1
