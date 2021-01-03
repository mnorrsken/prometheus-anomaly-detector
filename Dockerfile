FROM python:3.8-buster

ENV PYTHONWARNINGS="ignore:Unverified HTTPS request"
WORKDIR /usr/src/app
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt && pip install fbprophet

COPY *.py ./

CMD [ "python", "./app.py" ]
