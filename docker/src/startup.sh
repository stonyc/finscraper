#!/bin/bash

# Initialize users in the image:
adduser -q --gecos '""' --disabled-password stonyc

# Set default passwords for each user:
echo -e "temppass\ntemppass" | passwd stonyc

# Start the Jupyter hub server:
jupyterhub -f /etc/jupyterhub/jupyterhub_config.py --ip 0.0.0.0 --port 7777
