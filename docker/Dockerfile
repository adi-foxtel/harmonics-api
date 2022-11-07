FROM python:3.10-slim

COPY requirements.txt /tmp/
RUN pip install --no-cache-dir -r /tmp/requirements.txt && \
    rm /tmp/requirements.txt

RUN mkdir /harmonics_api
WORKDIR /harmonics_api
COPY . ./
RUN pip install .

EXPOSE 9000
ENTRYPOINT ["python", "-u", "/harmonics_api/scripts/apifast.py"]
