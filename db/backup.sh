#!/bin/bash
ssh git@erep.webbyapp.com 'mysqldump -q -u ninetofive -p ninetofive' > backup.sql
