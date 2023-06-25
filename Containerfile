FROM python:3.7-alpine
COPY . /app
WORKDIR /app
RUN pip install .
RUN test_flask create-db
RUN test_flask populate-db
RUN test_flask add-user -u admin -p admin
EXPOSE 5000
CMD ["test_flask", "run"]
