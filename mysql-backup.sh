#!/bin/bash

docker exec my-mysql /usr/bin/mysqldump -u root --password=root test_db > ./db/$(date +%Y%m%d-%H%M).sql
