#!/usr/bin/env bash

power_profile=$(system76-power profile | sed -n 1p)

echo "$power_profile"
echo "---"
echo "Battery | bash='system76-power profile battery' terminal=false"
echo "Balanced | bash='system76-power profile balanced' terminal=false"
echo "Performance | bash='system76-power profile performance' terminal=false"
