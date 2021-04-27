#! /bin/bash
a=0
while true; do
    #percentage=$(cat <(grep 'cpu ' /proc/stat) <(sleep 1 && grep 'cpu ' /proc/stat) | awk -v RS="" '{print ($13-$2+$15-$4)*100/($13-$2+$15-$4+$16-$5)}')
    #a[0]=$percentage
    cpu=$(</sys/class/thermal/thermal_zone0/temp)
    a=$((cpu/1000))
    echo "$a"
done
exit 0
