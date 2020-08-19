FROM ebarea1981/odoo_fslibre:12.7.0
MAINTAINER Eduardo Barea B. <ebarea1981@gmail.com>

USER root

RUN apt-get update
RUN wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb \
		&& dpkg -i google-chrome-stable_current_amd64.deb; apt-get -fy install\
        && rm -rf /var/lib/apt/lists/*

RUN pip3 install \
        websocket-client

# Set default user when running the container
USER odoo
