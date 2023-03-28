## How to Build 
```
docker build . - shinycell
```
## How to run this container
```
docker run --rm \
-v "./Data/shinyApps:/srv/shiny-server" \ 
-p 3838:3838 \
shinycell