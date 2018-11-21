#!/bin/bash
set -eu;
rm -rf src *tmp *.phar;
mkdir -p tmp/;
cd tmp/;
curl -L https://github.com/wudi/swoole-ide-helper/archive/master.zip -o master.zip
unzip -o *.zip  'swoole-ide-helper-master/src/*' -d src
mv src/*/src ../
cd ..
php -d phar.readonly=0 pack.php