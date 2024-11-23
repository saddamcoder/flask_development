FROM python:3.9.18-alpine3.18

LABEL authors="sadda"
LABEL Name="Python Flask demo App" Version=0.0.1
LABEL org.opencontainers.image.source = "https://github.com/saddamcoder/flask_development.git"

ADD . /python-flask
WORKDIR /python-flask

ENV FLASK_APP=project1/myapp.py
ENV FLASK_RUN_HOST=0.0.0.0

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

EXPOSE 5000
COPY . .

CMD ["flask", "run", "--debug"]
#CMD ["python", "project1/myapp.py"]

#ENTRYPOINT ["top", "-bmH"] #if ubuntu setup