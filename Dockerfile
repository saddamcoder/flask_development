FROM python:3.9.18-alpine3.18
LABEL authors="sadda"
ADD . /python-flask
WORKDIR /python-flask

RUN pip install -r requirements.txt

CMD ["python", "docker_test_jenkins/myapp.py"]

ENTRYPOINT ["top", "-b"]