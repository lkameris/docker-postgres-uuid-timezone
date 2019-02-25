FROM postgres

RUN apt-get update && apt-get install -y postgresql-contrib

ADD uuid.sql /docker-entrypoint-initdb.d/
ADD postgresql.conf /etc/postgresql/postgresql.conf
