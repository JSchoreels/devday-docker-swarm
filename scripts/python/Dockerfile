FROM ubuntu:18.04
RUN apt-get update && apt-get install -y python3
COPY host-app.py /container-app.py
CMD ["python3","/container-app.py"]

