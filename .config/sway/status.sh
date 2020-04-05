battery="/sys/class/power_supply/cw2015-battery"
hostname=$(cat /etc/hostname)

while true; do
	date=$(date +'%a %D | %r %Z')
	battery_status=$(cat $battery/status)
	battery_capacity=$(cat $battery/capacity)
	cpu_usage=$(mpstat 1 1 | tail -1 | awk '{print int(100.5-$12)}')
	ram_usage=$(free --mega | grep Mem: | awk '{print int($3/$2*100+0.5)}')

	echo $hostname \| CPU: $cpu_usage% \| RAM: $ram_usage% \| $battery_status $battery_capacity% \| $date
done
