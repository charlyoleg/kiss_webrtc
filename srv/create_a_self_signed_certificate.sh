#/usr/bin/bash

cd $(dirname $0)

### generate a self signed certificate
rm -fr ./kiss_webrtc.key ./kiss_webrtc.crt
openssl req -x509 -newkey rsa:4096 -sha256 -keyout ./kiss_webrtc.key -out ./kiss_webrtc.crt -days 365 -nodes -subj '/CN=localhost'

### view the certificate
#ls -la
#openssl x509 -in ./kiss_webrtc.crt -text -noout


