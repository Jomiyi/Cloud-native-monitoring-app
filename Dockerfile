FROM python:3.9-buster

WORKDIR /app

COPY requirements.txt .

# RUN apt-get update && apt-get install -y gcc python3-dev

# RUN python3 -m pip install --upgrade pip

RUN pip3 install --no-cache-dir -r requirements.txt

COPY . .

ENV FLASK_RUN_HOST=0.0.0.0

EXPOSE 3000

CMD [ "flask", "run" ]

