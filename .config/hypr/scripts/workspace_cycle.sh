#!/bin/fish
 
set -l delta (string trim -- $argv[1])
set -l max   (string trim -- $argv[2])

set -l cur (hyprctl -j activeworkspace 2>/dev/null | jq -r '.id' 2>/dev/null)
string match -rq '^[0-9]+$' -- "$cur"; or set cur 1

set -l next (math "$cur + $delta")
if test $next -lt 1
    set next $max
else if test $next -gt $max
    set next 1
end

hyprctl dispatch workspace $next
