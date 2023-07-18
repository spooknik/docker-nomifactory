#!/bin/bash
# Credit: https://github.com/Goobaroo 

set -x

cd /data

if ! [[ -f nomifactory-v1.2.2.1 ]]; then
	wget https://github.com/Nomifactory/Nomifactory/releases/download/v1.2.2.1/nomifactory-v1.2.2.1-server.zip
	unzip nomifactory-v1.2.2.1-server.zip 

fi

if [[ -n "$MOTD" ]]; then
    sed -i "/motd\s*=/ c motd=$MOTD" /data/server.properties
fi
if [[ -n "$LEVEL" ]]; then
    sed -i "/level-name\s*=/ c level-name=$LEVEL" /data/server.properties
fi

if [[ -n "$OPS" ]]; then
    echo $OPS | awk -v RS=, '{print}' >> ops.txt
fi

if ! [[ "$EULA" = "false" ]]; then
	echo "eula=true" > eula.txt
fi

curl -o log4j2_112-116.xml https://launcher.mojang.com/v1/objects/02937d122c86ce73319ef9975b58896fc1b491d1/log4j2_112-116.xml
java -server -Dfml.queryResult=confirm -Dlog4j.configurationFile=log4j2_112-116.xml $JVM_OPTS -jar forge-1.12.2-14.23.5.2860.jar nogui