#!/bin/bash

oc new-app https://github.com/nsabine/test-secrets-mount -o json > app.json
oc volume -f app.json --add --secret-name=mysecrets --type=secret --mount-path=/data -o json > app_with_volumes.json
sed -i '/"restartPolicy": "Always",/a "serviceAccount": "demo-sa",' app_with_volumes.json
oc create -f app_with_volumes.json
oc expose service test-secrets-mount --hostname=test-secrets-mount.cloudapps.example.com
#oc deploy test-secrets-mount --latest
oc start-build test-secrets-mount


