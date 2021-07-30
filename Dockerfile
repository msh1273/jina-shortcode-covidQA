FROM jinaai/jina:2.0-standard

RUN apt-get update && apt-get -y install wget git 
RUN pip install torch transformers

COPY . /workspace
WORKDIR /workspace

RUN pip install -r requirements.txt
ENTRYPOINT [ "python", "app.py"]