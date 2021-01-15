# fastai_codespace_graphviz

Docker file for fastai/codespace with graphviz added. I'm sure this is probably not nessary to do it this way but could not find another way to add
graphviz to test notebooks with graphviz output.

## Use

In the dockercompose.yml of your project, sub the line fastai/codespaces for btraill/codespaces_graphviz

```
     image: btraill/codespaces_graphviz
```

Warning: the fastai/codespaces image is rebuilt on a regular basis, this one is not! You probably want to rebuild it to get the latest fastai image.

## Build

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

