ARG BASE_CONTAINER=jupyter/pyspark-notebook

FROM $BASE_CONTAINER

USER root
RUN apt update
RUN apt install libpq-dev -y
RUN pip install pandas numpy psycopg2 clickhouse-driver sqlalchemy clickhouse-sqlalchemy

# Switch back to jovyan to avoid accidental container runs as root
USER jovyan
