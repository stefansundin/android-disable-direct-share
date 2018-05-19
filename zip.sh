#!/bin/bash -ex
rm -f disable-direct-share-v1.zip disable-direct-share-v1-uninstall.zip
zip -r disable-direct-share-v1.zip META-INF disable-direct-share.xml
(cd uninstall && zip -r ../disable-direct-share-v1-uninstall.zip META-INF)
