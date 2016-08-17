#!/bin/bash
ls -al
# Push app
export CF_APP_NAME="$CF_APP"
env
cf push "${CF_APP_NAME}"
export APP_URL=http://$(cf app $CF_APP_NAME | grep urls: | awk '{print $2}')
# View logs
#cf logs "${CF_APP_NAME}" --recent
