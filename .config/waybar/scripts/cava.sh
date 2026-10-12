#! /bin/sh

killall cava 2>/dev/null

config_file="/tmp/cava_config"
echo "
[general]
bars = 14

[output]
method = raw
raw_target = /dev/stdout
data_format = ascii
ascii_max_range = 7
" > $config_file

cava -p $config_file | while read -r line; do
    echo $line | sed "s/;//g;"
done