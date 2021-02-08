#The opposite: if needed to recover
sudo docker pull svlpdocker01.stjude.org:443/dlc-tensorflow-1-13:v`cat version.txt`
sudo docker tag svlpdocker01.stjude.org:443/dlc-tensorflow-1-13:v`cat version.txt` dlc_username/dlcdocker:latest
