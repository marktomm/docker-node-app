#!/bin/bash
set -e

[[ $DEBUG == true ]] && set -x

case ${1} in
  app:dev|app:prod)
    case ${1} in
      app:dev)
        nodemon /src/index.js
        ;;
      app:prod)
        node /src/index.js
        ;;
    esac
    ;;
  app:help)
    echo "Available options:"
    echo " app:dev            - dev mode"
    echo " app:prod           - production mode"
    echo " [command]          - Execute the specified command, eg. bash."
    ;;
  *)
    exec "$@"
    ;;
esac
