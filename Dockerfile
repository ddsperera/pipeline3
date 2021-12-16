FROM debian:11.1
WORKDIR /usr/src/app
COPY . .
RUN apt-get update -y && \
  apt-get install -y python3-pip
RUN pip3 install -r requirements.txt
EXPOSE 5000
CMD [ "python3", "app.py" ]
