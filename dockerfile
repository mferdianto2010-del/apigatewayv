FROM python:3.13-slim

WORKDIR /usr/src/app

RUN mkdir -p /mnt/efs/log

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 5000

VOLUME ["/mnt/efs/log"]

CMD [ "python", "app.py" ]