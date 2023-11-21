# Basic container
FROM python:3.11.6

# Install the important things
RUN apt update && \
    apt-get install python3 python3-pip tree -y

# Remove the EXTERNALLY-MANAGED for can use the PIP in the container
RUN rm /usr/lib/python3.11/EXTERNALLY-MANAGED && \
    pip install Django

# Create the Working Directori
RUN mkdir /var/django && \
    mkdir /var/django/apps

# Install nano
RUN apt-get install nano -y

EXPOSE 80

WORKDIR /var/django/apps