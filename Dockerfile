FROM python:3.6-alpine
LABEL maintainer="ULRICH MONJI"
WORKDIR /opt
RUN pip install flask==1.1.2
EXPOSE 8080
ENV ODOO_URL=http://odoo.com
ENV PGADMIN_URL=http://pgadmin.org
COPY . /opt/
ENTRYPOINT ["python", "app.py"]
#ENTRYPOINT ["python"]
#CMD ["app.py"]