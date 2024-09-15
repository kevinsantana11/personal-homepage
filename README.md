# personal-homepage

This repository contains the code for my personal homepage. The idea here is for the page to contain
blog posts, resume, and social links.

# Hacking in a container
0. Build the container 
```
docker build --tag=dev-jekyll-homepage .
```
1. Power up the dev container and start up the application. It should be noted that Jekyll supports hot reloads. 
```bash
docker run \
-v /home/ksantana/Sources/personal-homepage/site:/srv/personal-homepage \
-p 8080:4000 \
-td \
dev-jekyll-homepage:latest
```
2. Open up your favorite browser and navigate to http://localhost:8080