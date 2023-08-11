FROM apache/superset
# Switching to root to install the required packages
USER root
# Example: installing the MySQL driver to connect to the metadata database
# if you prefer Postgres, you may want to use `psycopg2-binary` instead
RUN pip install pip --upgrade
RUN pip install mysqlclient psycopg2-binary psycopg2 gsheetsdb pymssql sqlalchemy-redshift
USER superset