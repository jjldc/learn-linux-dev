#!/bin/sh

base_dir=$(cd `dirname $0`; pwd)

# 将if(m)改成if(false)
sed -i s/if\(m\)for\(n/if\(false\)for\(n/ $base_dir/../_book/gitbook/theme.js