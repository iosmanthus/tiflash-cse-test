#!/usr/bin/env bash

rm ~/.tiup/data/* -rf
rm ./tiflash/* -rf

tiup playground v6.2.0 \
    --pd 1 \
    --pd.binpath ./bin/pd-server \
    --pd.config ./pd.toml \
    --db 1 \
    --db.binpath ./bin/tidb-server \
    --db.config ./tidb.toml \
    --kv 3 \
    --kv.config ./tikv.toml \
    --kv.binpath ./bin/tikv-server \
    --tiflash 1 \
    --tiflash.config ./tiflash.toml \
    --tiflash.binpath /workspaces/tiflash-docker-env/tiflash-cse/build/dbms/src/Server/tiflash
