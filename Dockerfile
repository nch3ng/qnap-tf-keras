FROM tensorflow/tensorflow:1.10.0-gpu-py3
RUN apt-get update && apt-get install -y --no-install-recommends \
	    wget git
RUN pip install keras

WORKDIR /notebook
EXPOSE 8888

CMD jupyter notebook --no-browser --ip=0.0.0.0 --allow-root --NotebookApp.token=