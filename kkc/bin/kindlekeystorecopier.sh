#!/bin/sh
/usr/sbin/eips -c
/usr/sbin/eips 11 18 'KKC Keystore Copier Loading...'
/usr/sbin/eips -c
/usr/sbin/eips 11 18 'Backing Up Certificates...'
cp -f /var/local/java/keystore/developer.keystore /var/local/java/keystore/developer.keystore.backup1
/usr/sbin/eips -c
/usr/sbin/eips 11 18 'Please Wait Merging...'
/usr/local/bin/java -jar /mnt/us/extensions/kkc/bin/mergekeystore.jar /var/local/java/keystore/developer.keystore /mnt/us/extensions/kkc/bin/kkc.keystore >> /mnt/us/extensions/sertify/bin/mergekeystore.log
/usr/sbin/eips -c
/usr/sbin/eips 11 18 'Done! Pls Restart Your Kindle!'
