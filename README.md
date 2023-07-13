# Docker base image for repo2docker

[`methodshub`](https://github.com/GESIS-Methods-Hub/methodshub) uses [`repo2docker`](https://github.com/jupyterhub/repo2docker) to create the virtual environment to host computation included in a piece of content. The virtual environment requires [Quarto](https://quarto.org/) and, since [`repo2docker` 2023.06.0](https://github.com/jupyterhub/repo2docker/releases/tag/2023.06.0), we can provide our own base image with Quarto pre-installed to `repo2docker`.

DockerHub: https://hub.docker.com/r/gesiscss/repo2docker_base_image
