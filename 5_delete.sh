oc delete -f app_with_volumes.json
oc delete pod test-secrets-mount-1-deploy
oc delete secrets mysecrets
oc delete -f sa.json
oc delete route test-secrets-mount
oc delete all -l app=test-secrets-mount
rm -f app*.json
