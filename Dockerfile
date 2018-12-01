FROM tensorflow/tensorflow:1.10.0-gpu-py3
RUN apt-get update && apt-get install -y --no-install-recommends \
	    wget git  python3-sqlalchemy \
        python3-venv 
RUN pip install keras xlrd

WORKDIR /notebook
EXPOSE 8888

CMD jupyter notebook --no-browser --ip=0.0.0.0 --allow-root --NotebookApp.token=