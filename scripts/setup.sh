#!/bin/sh

chmod 755 ./scripts/*

./scripts/ubuntu.sh
./scripts/ubuntu_desktop.sh
./scripts/conda.sh

./scripts/aws.sh
./scripts/git.sh
./scripts/keys.sh
./scripts/java.sh
./scripts/media.sh
./scripts/r.sh
./scripts/sql.sh
./scripts/airflow.sh

./scripts/repos.sh
