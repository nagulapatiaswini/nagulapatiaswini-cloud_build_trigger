FROM tiangolo/uwsgi-nginx:python3.8-alpine-2020-12-19
ENV LISTEN_PORT=5000
EXPOSE 5000
ENV UWSGI_INI uwsgi.ini
ENV STATIC_URL /hello_app/static
WORKDIR /hello_app
COPY . /hello_app
# If you have additional requirements beyond Flask (which is included in the
# base image), generate a requirements.txt file with pip freeze and uncomment
# the next three lines.
#COPY requirements.txt /
#RUN pip install --no-cache-dir -U pip
#RUN pip install --no-cache-dir -r /requirements.txt
