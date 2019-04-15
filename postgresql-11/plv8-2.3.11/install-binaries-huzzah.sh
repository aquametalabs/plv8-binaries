#!/bin/bash
# exit on failure
set -e
set -o pipefail

echo "installing plv8 binnnnnnnnnnnnnnnnaries!..................................."
echo "installing plv8 binnnnnnnnnnnnnnnnaries!..................................."
pwd


/bin/mkdir -p '/usr/lib/postgresql/11/lib'
/bin/mkdir -p '/usr/share/postgresql/11/extension'
/bin/mkdir -p '/usr/share/postgresql/11/extension'
/usr/bin/install -c -m 755  plv8-2.3.11.so '/usr/lib/postgresql/11/lib/plv8-2.3.11.so'
/usr/bin/install -c -m 644 ./plv8.control '/usr/share/postgresql/11/extension/'
/usr/bin/install -c -m 644 ./plv8.control ./plv8--2.3.11.sql ./upgrade/plv8--1.5.5--2.3.11.sql ./upgrade/plv8--2.3.7--2.3.11.sql ./upgrade/plv8--2.3.0--2.3.11.sql ./upgrade/plv8--1.5.2--2.3.11.sql ./upgrade/plv8--2.1.2--2.3.11.sql ./upgrade/plv8--2.0.1--2.3.11.sql ./upgrade/plv8--2.3.6--2.3.11.sql ./upgrade/plv8--2.3.10--2.3.11.sql ./upgrade/plv8--2.1.0--2.3.11.sql ./upgrade/plv8--2.3.8--2.3.11.sql ./upgrade/plv8--1.5.7--2.3.11.sql ./upgrade/plv8--2.3.3--2.3.11.sql ./upgrade/plv8--2.0.0--2.3.11.sql ./upgrade/plv8--2.0.3--2.3.11.sql ./upgrade/plv8--2.3.4--2.3.11.sql ./upgrade/plv8--2.3.1--2.3.11.sql ./upgrade/plv8--1.5.0--2.3.11.sql ./upgrade/plv8--1.5.4--2.3.11.sql ./upgrade/plv8--1.5.1--2.3.11.sql ./upgrade/plv8--2.3.9--2.3.11.sql ./upgrade/plv8--1.5.6--2.3.11.sql ./upgrade/plv8--2.3.5--2.3.11.sql ./upgrade/plv8--1.5.3--2.3.11.sql ./upgrade/plv8--2.3.2--2.3.11.sql ./plcoffee.control ./plcoffee--2.3.11.sql ./plls.control ./plls--2.3.11.sql  '/usr/share/postgresql/11/extension/'
/bin/mkdir -p '/usr/lib/postgresql/11/lib/bitcode/plv8-2.3.11'
/bin/mkdir -p '/usr/lib/postgresql/11/lib/bitcode'/plv8-2.3.11/
/usr/bin/install -c -m 644 plv8.bc '/usr/lib/postgresql/11/lib/bitcode'/plv8-2.3.11/./
/usr/bin/install -c -m 644 plv8_type.bc '/usr/lib/postgresql/11/lib/bitcode'/plv8-2.3.11/./
/usr/bin/install -c -m 644 plv8_func.bc '/usr/lib/postgresql/11/lib/bitcode'/plv8-2.3.11/./
/usr/bin/install -c -m 644 plv8_param.bc '/usr/lib/postgresql/11/lib/bitcode'/plv8-2.3.11/./
/usr/bin/install -c -m 644 coffee-script.bc '/usr/lib/postgresql/11/lib/bitcode'/plv8-2.3.11/./
/usr/bin/install -c -m 644 livescript.bc '/usr/lib/postgresql/11/lib/bitcode'/plv8-2.3.11/./
cd '/usr/lib/postgresql/11/lib/bitcode' && /usr/lib/llvm-6.0/bin/llvm-lto -thinlto -thinlto-action=thinlink -o plv8-2.3.11.index.bc plv8-2.3.11/plv8.bc plv8-2.3.11/plv8_type.bc plv8-2.3.11/plv8_func.bc plv8-2.3.11/plv8_param.bc plv8-2.3.11/coffee-script.bc plv8-2.3.11/livescript.bc
