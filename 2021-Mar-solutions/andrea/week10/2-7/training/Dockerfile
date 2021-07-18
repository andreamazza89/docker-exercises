FROM python:3.6.7-slim

RUN apt update && apt install git -y

WORKDIR /src

RUN git clone https://github.com/docker-hy/ml-kurkkumopo-training.git && cp -R ./ml-kurkkumopo-training/* .

RUN pip install --upgrade pip

RUN pip install --trusted-host pypi.python.org -r requirements.txt

RUN mkdir /src/imgs

CMD ["python", "-u", "train.py"]
