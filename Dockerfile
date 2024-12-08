FROM python:alpine
#FROM alpine
#RUN apk -U upgrade && apk add --no-cache py3-pip curl  &&\
RUN pip3 install --no-cache-dir --upgrade pip --break-system-packages &&\
    pip3 install --no-cache-dir flask requests Flask-Caching --break-system-packages &&\
    rm -rf /var/cache/apk/*

WORKDIR /code
ADD . /code
COPY app.py /code/app.py
COPY requirements.txt /code/requirements.txt
RUN pip3 install --no-cache-dir -r /code/requirements.txt --break-system-packages
EXPOSE 5000

CMD ["python3", "app.py"]
