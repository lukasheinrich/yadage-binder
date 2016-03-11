# yadage-binder

[![](https://badge.imagelayers.io/lukasheinrich/yadage-binder:latest.svg)](https://imagelayers.io/?images=lukasheinrich/yadage-binder:latest 'Get your own badge on imagelayers.io')

start a carina cluster like such

    docker run -v /workdir -p 80:8888 -e YADAGE_WITHIN_DOCKER=true -e CARINA_USERNAME=$CARINA_USERNAME -e CARINA_APIKEY=$CARINA_APIKEY -e YADAGE_CLUSTER=yadage lukasheinrich/yadage-binder
