# How run ShinyCell-Docker 
## **Requiments**
### Docker
* Windows | [How to Install Docker Desktop on Windows](https://docs.docker.com/desktop/install/windows-install/)
* macOS | [How to Install Docker Desktop on Mac](https://docs.docker.com/desktop/install/mac-install/)
* Linux | [How to Install Docker Desktop on Linux](https://docs.docker.com/desktop/install/linux-install/)

### ShinnyApp
- Create a `shinyApps` folder
* Copy the shinyapp to the folder

## **Build docker image**
## How to Build 
```shell
docker build . - shinycell
```
## **Run docker image** 
## How to run this container
```shell
docker run --rm \
-v "./shinyApps/[shinyapp folder name]:/srv/shiny-server" \ 
-p 3838:3838 \
shinycell
```
## How to run multiple shinyapps at the same time using docker compose file

Use the docker compose file template to run multiple apps, change the host ports is required.
```docker
    ports:
        - [host-port]:3838
```

The command below allows to run multiple container instances on one command. 
```shell
docker compose up -d
```
| This instruction assumes that is run on the path of this code.