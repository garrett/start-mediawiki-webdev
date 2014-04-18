#!/bin/sh

PORT=8888
LOCAL_DIR=wiki

echo
echo \#\#\# Welcome to MediaWiki. 
echo 
echo If everything works, please visit http://0.0.0.0:$PORT/ in your browser.
echo
echo All MediaWiki-related files are located locally in wiki/html/
echo Edit the files to your heart\'s content.
echo
echo Hit \<control-c\> to stop the server.
echo

docker run -p $PORT:80 -v $PWD/$LOCAL_DIR:/var/www/ garrett/webdev-simple
