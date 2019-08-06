#!/bin/sh

base_dir=$(cd `dirname $0`; pwd)

www_dir=$base_dir/../_book

cd $www_dir
python -m SimpleHTTPServer 4000 > /dev/null 2>&1 &