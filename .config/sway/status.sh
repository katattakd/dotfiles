battery="/sys/class/power_supply/cw2015-battery"
hostname=$(cat /etc/hostname)

# TODO: Replace cpu_load and ram_usage with /proc/pressure values

while true; do
	date=$(date +'%a %D | %r %Z')
	battery_status=$(<$battery/status)
	battery_capacity=$(<$battery/capacity)
	cpu_load=$(</proc/loadavg)
	ram_usage=$(awk 'BEGIN {RS = ""; FS=" "} {print int(($2-$5-$11-$14-$68)/$2*100)}' /proc/meminfo)
	echo $hostname \| CPU Load: ${cpu_load%% *} \| RAM: $ram_usage% \| $battery_status $battery_capacity% \| $date
	sleep 0.25
done
