#!/usr/bin/env bash

power_profile=$(system76-power profile | sed -n 1p)

echo "$power_profile"
