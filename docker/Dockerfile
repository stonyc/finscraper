FROM python:latest

WORKDIR /tmp
# Install required packages:
COPY src/requirements.txt ./
RUN pip install -r requirements.txt

# Prepare Jupyter Hub and add users to configuration file:
RUN mkdir -p /etc/jupyterhub
WORKDIR /etc/jupyterhub
RUN jupyterhub --generate-config
RUN echo "c.Authenticator.allowed_users = {'stonyc'}" >> jupyterhub_config.py
RUN echo "c.Authenticator.admin_users = {'stonyc'}" >> jupyterhub_config.py
RUN echo "c.Spawner.notebook_dir = '/tmp'" >> jupyterhub_config.py

# Copy and enable the startup script:
WORKDIR /tmp
COPY src/startup.sh ./
RUN chmod +x startup.sh

EXPOSE 7777
ENTRYPOINT ["/bin/bash", /tmp/startup.sh"]
