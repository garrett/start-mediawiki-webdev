#!/bin/sh

MWDIR=wiki/html
CONFIG=$MWDIR/LocalSettings.php

cd $MWDIR/skins/
git clone https://github.com/OSAS/strapping-mediawiki strapping
cd -

echo '' >> $CONFIG
echo 'require_once( "$IP/skins/strapping/strapping.php" );' >> $CONFIG
echo '$wgDefaultSkin = "strapping";' >> $CONFIG

echo
echo Strapping theme installed and activated.
echo Run ./start-mediawiki.sh now.
echo
