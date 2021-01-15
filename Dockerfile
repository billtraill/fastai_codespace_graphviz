FROM fastai/codespaces
RUN apt-get update
RUN apt-get install -y graphviz
RUN apt-get clean
CMD [ "/bin/bash" ]
