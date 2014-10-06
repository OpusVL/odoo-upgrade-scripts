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


