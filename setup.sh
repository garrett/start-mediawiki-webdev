#!/bin/sh

echo
mkdir -p wiki/data wiki/html
echo "Created wiki/data/ and wiki/html/"

echo
echo "Downloading MediaWiki to wiki/html/"
curl https://releases.wikimedia.org/mediawiki/1.22/mediawiki-1.22.5.tar.gz | tar xzf -
mv -vT mediawiki-1.22.5/ wiki/html/

echo
chmod a+rwx wiki/data wiki/html

echo 
echo "Run ./start-mediawiki.sh to start your MediaWiki development server..."
echo
echo "(Optional: To install Strapping, run ./install-strapping.sh after creating LocalSettings.php.)"
echo
