#!/bin/bash

up() {
    source ~/.bashrc
    cd airflow/

    docker compose up -d
}

down() {

    cd airflow/

    docker compose down
}

rm() {
      cd airflow/
  docker compose down --volumes --rmi all
}

case $1 in
  up)
    up
    ;;
  down)
    down
    ;;
  rm)
    rm
    ;;
  *)
    echo "Usage: $0 {up|down|rm}"
    ;;
esac