FROM python:3.7-slim

WORKDIR /app

COPY requirements.txt requirements.txt

RUN apt-get update
RUN apt-get install -y graphviz
RUN pip install numpy
RUN pip install -r requirements.txt

COPY . .

ENV PORT=80

EXPOSE 8080

ENTRYPOINT [ "python" ]
CMD ["run.py"]
