#!/bin/bash

#What message to look for when there are no DNS servers set
emptyMsg="There aren't any DNS Servers set on WI-FI."
#What DNS servers should be added.
DNSservers="8.8.8.8 4.4.4.4 2001:4860:4860::8888 2001:4860:4860::8844"

echo Finding current DNS
if [[ "$(networksetup -getdnsservers WI-FI)" == "$emptyMsg" ]]; then
  echo Switching to Google DNS
  $(networksetup -setdnsservers WI-FI $DNSservers)
else
  echo Switching to default DNS
  $(networksetup -setdnsservers WI-FI empty)
fi
echo Im done!
