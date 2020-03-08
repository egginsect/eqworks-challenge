FROM jupyter/pyspark-notebook

MAINTAINER hwlee@gapp.nthu.edu.tw

USER root
RUN apt-get update
RUN apt-get install -qq -y libspatialindex-dev
RUN mkdir -p /home/jupyter/data
COPY data/* /home/jupyter/data/
COPY requirements.txt /home/jupyter/requirements.txt
COPY EQWorksWorkSample.ipynb /home/jupyter/


USER $NB_UID
WORKDIR /home/jupyter
RUN pip install -r requirements.txt
EXPOSE 8888

ENTRYPOINT ["tini", "--"]
CMD ["jupyter", "notebook", "--allow-root", "--notebook-dir=/home/jupyter", "--ip=0.0.0.0", "--port=8888", "--no-browser"]
