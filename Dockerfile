FROM python:3.8-slim-buster

ENV PYTHONUNBUFFERED=1

# Install necessary packages for building C/C++ code
RUN apt-get update && \
    apt-get install -y gcc g++ make

WORKDIR /django

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

COPY app.py /app
CMD ["python3", "app.py", "--output", "/app/output/output.txt"]