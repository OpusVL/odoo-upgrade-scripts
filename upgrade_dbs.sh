#!/bin/bash

if [ -z "$1" ] ; then
    echo "Error: Must specify name of module, or 'all', as first argument" >&2
    exit 2
fi

MODULES="$1"

while read D ; do
    echo DB: $D
    /opt/odoo/openerp-server --stop-after-init -c /srv/odoo/odoo.conf -d "$D" -u "$MODULES" --logfile=/dev/stdout 2>&1
done
