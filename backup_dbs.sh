#! /bin/bash

while read D ; do
    pg_dump --no-owner --no-privileges "$D" | xz > "${D}.sql.xz"
done
