# syntax=docker/dockerfile:1
# A Dockerfile is a text document that contains all the commands a user could call on the command line to assemble an image.
FROM jupyter/scipy-notebook 
#set the working directory to /home/jovyan/repo
WORKDIR /home/jovyan/repo
#set the user to root the amdin user.
USER root
#install and upfate files
RUN sudo apt update && sudo apt -y upgrade && sudo apt -y install git
RUN apt update && apt -y upgrade && apt -y install git
#set back to standard jupyter user.
USER jovyan
#copy requirements.txt and install the Python dependencies.
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
#add metadata to the image to describe that the container is listening on port 8888
EXPOSE 8888
