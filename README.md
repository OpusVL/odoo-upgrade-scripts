# odoo-upgrade-scripts

## Purpose

These are some simple shell scripts to backup and upgrade Odoo databases, en-masse,
from the command line on the server on which Odoo is running.

## Interface

Both scripts take their list of databases on STDIN, one database name per line.

They expect to be run as the user that owns the databases.

In `upgrade_dbs.sh` you must also specify the name of the module to upgrade as its
argument.  Use `all` to upgrade all installed modules (i.e. if you've upgraded Odoo itself
or many third-party addons).

## Known Limitations

`upgrade_dbs.sh` is hard-coded to expect the server program to be at
`/opt/odoo/openerp-server`,
and the configuration at `/srv/odoo/odoo.conf`.



# Copyright and License

Copyright (C) 2014 OpusVL

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU Affero General Public License as
published by the Free Software Foundation, either version 3 of the
License, or (at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU Affero General Public License for more details.

You should have received a copy of the GNU Affero General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.

If you require assistance, support, or further development of this
software, please contact OpusVL using the details below:

* Telephone: +44 (0)1788 298 410
* Email: community@opusvl.com
* Web: http://opusvl.com
