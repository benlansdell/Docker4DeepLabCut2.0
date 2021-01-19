#!/bin/bash
#sudo docker tag dlc_username/dlcdocker svlpdocker01.stjude.org:443/dlc-tensorflow-1-13:v0.3
sudo docker tag dlc_username/dlcdocker svlpdocker01.stjude.org:443/dlc-tensorflow-1-13:v`cat version.txt`
sudo docker push svlpdocker01.stjude.org:443/dlc-tensorflow-1-13:v`cat version.txt`
