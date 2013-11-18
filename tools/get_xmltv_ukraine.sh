#!/bin/sh
BASEDIR=$( cd $(dirname $0) ; pwd -P )
URL1="http://www.teleguide.info/download/new3/tvguide.zip"
URL2="http://www.vipiko.tv/get/?cur-xtv-xml"

mkdir $TMPDIR/xmltv
cd $TMPDIR/xmltv
curl -o xml.zip $URL1
unzip -o xml.zip
curl -o second.xml $URL2
tv_cat tvguide.xml second.xml > tv.xml
mv tv.xml $BASEDIR/../static/
cd /
rm -rf $TMPDIR/xmltv
