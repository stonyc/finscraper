FROM ubuntu:20.04

ENV DEBIAN_FRONTEND noninteractive

# Install python3.8 and python-pip:
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y python3.8 python3-pip nodejs npm
# Link python3.8 to the python command:
RUN ln -s /usr/bin/python3.8 /usr/local/bin/python

# Install required packages:
WORKDIR /home/finscraper
RUN npm install -g configurable-http-proxy
COPY src/requirements.txt ./
RUN pip install --upgrade pip && \
    pip install -r requirements.txt
    
# Setup the startup script:
COPY src/startup.sh ./
RUN chmod +x startup.sh

EXPOSE 7777
ENTRYPOINT ["/bin/bash", "/home/finscraper/startup.sh"]
