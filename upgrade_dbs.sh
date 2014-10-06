#!/bin/bash


# Upgrade Odoo modules in databases named on STDIN
#
# Copyright (C) 2014 OpusVL
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU Affero General Public License as
# published by the Free Software Foundation, either version 3 of the
# License, or (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU Affero General Public License for more details.
#
# You should have received a copy of the GNU Affero General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.
#
# If you require assistance, support, or further development of this
# software, please contact OpusVL using the details below:
#
# Telephone: +44 (0)1788 298 410
# Email: community@opusvl.com
# Web: http://opusvl.com

if [ -z "$1" ] ; then
    echo "Error: Must specify name of module, or 'all', as first argument" >&2
    exit 2
fi

MODULES="$1"

while read D ; do
    echo DB: $D
    /opt/odoo/openerp-server --stop-after-init -c /srv/odoo/odoo.conf -d "$D" -u "$MODULES" --logfile=/dev/stdout 2>&1
done
