# fastai_codespace_graphviz

When using fastai/nbdev and using github actions was unable to get tests passing as the docker image used for testing didn't have graphviz installed. 

To fix this problem I created this `Dockerfile` with graphviz added to replace the fastai/codespace one.

I'm sure this is probably not nessary to do it this way but could not find another way to add
graphviz to test notebooks with graphviz output.

## Use

In the `docker-compose.yml` of your project, sub the line fastai/codespaces for btraill/codespaces_graphviz

```
     image: btraill/codespaces_graphviz
```

Warning: the fastai/codespaces image is rebuilt on a regular basis, this one is not! You probably want to rebuild it to get the latest fastai image.

## Build

If you need to build this you will need to change it to your docker id and create a version for yourself and push it upto docker.

```
docker build -t btraill/codespaces_graphviz .
```

## Test

```
docker run -it --entrypoint /bin/bash btraill/codespaces_graphviz
```

## Push changes

Make sure you are logged in docker desktop first before doing this otherwise this will fail

```
docker push btraill/codespaces_graphviz
```

