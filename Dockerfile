# syntax=docker/dockerfile:1
FROM python:3.7-alpine
WORKDIR /code
RUN pip install mysql-connector
EXPOSE 60010
COPY . .
CMD ["cdr_logger.py"]
ENTRYPOINT ["python3"]
