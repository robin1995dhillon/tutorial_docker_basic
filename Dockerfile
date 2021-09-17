# start from base
FROM ubuntu:18.04

RUN apt-get update -y && \

    apt-get install -y python-pip python-dev

# We copy just the requirements.txt

COPY ./requirements.txt /app/requirements.txt

WORKDIR /app

RUN pip install -r requirements.txt

COPY . /app



EXPOSE 7000
CMD [ "python", "-m" , "flask", "run", "--host=0.0.0.0"]

