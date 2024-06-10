#!/usr/bin/env bash

power_profile=$(system76-power profile | sed -n 1p)
output_text=$(echo $power_profile | sed 's/Power Profile://')

echo "$output_text"
echo "---"
echo "Battery | bash='system76-power profile battery && brightnessctl -d amdgpu_bl1 set 33%' terminal=false"
echo "Balanced | bash='system76-power profile balanced' terminal=false"
echo "Performance | bash='system76-power profile performance' terminal=false"
