docker stop containername
docker rm containername
GPU=4,5,6,7 bash ./dlc-docker run -d -p 2351:8888 -e USER_HOME=$HOME/DeepLabCut --name containername dlc_username/dlcdocker
#GPU=4,5,6,7 bash ./dlc-docker run -d -p 2351:8888 -e USER_HOME=$HOME/DeepLabCut --name containername dlc_username/dlcdocker
USER= docker exec --user $USER -it containername /bin/bash
