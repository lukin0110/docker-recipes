# Docker recipes

Over the past years i've been using Docker heavily in a lot of projects.
On [Docker Hub](https://hub.docker.com/) you can find a lot of useful
base images to start with. But ofter you want to do more with your 
image. You can only inherit from 1 image. I copy/paste snippets
from other projects to get things done. In this repo I try to organize
snippets/hacks that I use a lot.

Feel free to copy/paste these snippets for your own projects. Open a
[pull request](https://github.com/lukin0110/docker-recipes/pulls) if 
you like to add or extend these snippets.

## Entrypoints

Entrypoints are a powerful feature in Docker. It has become a *De Facto*
standard to add an `entrypoint.sh` file to your project. This allows 
you to define *commands* for your image. 

* [Python/Django](entrpoints/django-entrypoint.sh)
* [Python/Flask](entrypoints/flask-entrypoint.sh)
* [Node.js](entrypoints/nodejs-entrypoint.sh)



## Other Dockerfile repositories

* [Docker AWS CLI](https://github.com/lukin0110/docker-awscli): Amazon Web Services CLI Wrapped in a Docker image
* [Docker VTK Python](https://github.com/lukin0110/docker-vtk-python): Docker image for Python projects with the VTK C++ library
* [Docker Django Boilerplate](https://github.com/lukin0110/docker-django-boilerplate): Boilerplate project for Django projects
* [Docker Slager](https://github.com/lukin0110/docker-slanger): Docker container for Slanger (a Pusher implementation)
* [Docker Debian ARM Node.js](https://github.com/lukin0110/docker-debian-armhf-nodejs): Docker images for Node.js development on Debian with an ARM architecture
* [Docker Libsodium](https://github.com/lukin0110/docker-libsodium): libsodium Dockerfile, libsodium is pre installed on an Ubuntu image

