# https://github.com/DeepLabCut/Docker4DeepLabCut2.0
FROM python:3
ADD /DeepLabCut /DeepLabCut
RUN pip3 install --upgrade pip==20.0.2 wheel==0.34.2 setuptools==46.1.3
RUN pip install imageio
RUN pip install imageio-ffmpeg
RUN apt-get update

RUN apt-get install make gcc libgtk-3-dev libgstreamer-gl1.0-0 freeglut3 freeglut3-dev python-gst-1.0 python3-gst-1.0 libglib2.0-dev libgstreamer-plugins-base1.0-dev build-essential -y
RUN pip3 install wxpython

FROM bethgelab/deeplearning:cuda10.0-cudnn7
#RUN add-apt-repository -u ppa:deadsnakes/ppa #ADDS NEW REPO
#RUN add-apt-repository --remove ppa:jonathonf/python-3.6 #REMOVES BROKEN REPO #removed dec 2020

RUN apt-get update; exit 0 #This will complain about the jonathonf repo... but is needed. So here add an exit 0 to ensure docker doesn't stop
RUN apt-get install ffmpeg libsm6 libxext6 -y #Needed for libgl.so
RUN pip3 install easydict opencv-python scikit-image statsmodels # DLC dependencies not installed elsewhere

RUN pip install tensorflow-gpu==1.13.1
#see issue #25:
RUN pip install --upgrade pip 
RUN pip install ruamel_yaml
RUN pip install ipywidgets
RUN pip3 install ipywidgets
RUN pip3 install seaborn
RUN pip3 install imgaug #DLC dep not installed elsewhere
RUN pip install ray[tune]
RUN pip install tables
COPY DeepLabCut/deeplabcut/ /usr/lib/python3.6/deeplabcut/
ENV DLClight True
ENV LC_ALL C.UTF-8
ENV LANG C.UTF-8
