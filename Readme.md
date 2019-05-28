# Install Docker

See https://docs.docker.com/install


# Docker Hub

Images are stored on Docker Hub under the organization `i4ds`. Therefore you need to create an account on `https://hub.docker.com/` and ask (e.g. Fabian Märki) for access to `i4ds`.


# Setup RStudio Environment 

Modify the [Dockerfile](Dockerfile) according your needs.

Build the RStudio environment with I4DS specific dependencies and upload it to Docker Hub.

```bash
docker build --no-cache=true -t i4ds/rstudio .

docker login
docker push i4ds/rstudio
```


# Run RStudio

Run the RStudio server

```bash
# set the path to your Jupyter Notebook files
R_FILES=$PWD
docker run --name rstudio --net=dbnet -p 8787:8787 -v "$R_FILES":/home/rstudio/r-files -e PASSWORD=rstudio_pw -d i4ds/rstudio
# start your browser
firefox http://127.0.0.1:8787
```

