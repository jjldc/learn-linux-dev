#!/bin/sh
base_dir=$(cd `dirname $0`; pwd)

saved_dir=`pwd`
cd $base_dir/..
gitbook build

chmod +x $base_dir/../scripts/gitbook-patch.sh
$base_dir/../scripts/gitbook-patch.sh

# zip
cd $base_dir/../_book/
zip -r $base_dir/../LearnLinuxDev.zip *

cd $saved_dir

