FROM ubuntu:latest

WORKDIR /app

COPY requirements.txt .

RUN apt-get update && apt-get install -y pip

RUN pip install -r requirements.txt

COPY . .

CMD [ "python3", "./Hello.py" ]