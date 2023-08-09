FROM python:3.10.12

ADD requirements.txt /
ADD model /model
ADD ms /ms
ADD app.py /

RUN pip install -r /requirements.txt


ENV PYTHONUNBUFFERED=1

CMD [ "python3", "./app.py" ]
