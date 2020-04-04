battery="/sys/class/power_supply/cw2015-battery"
cpu_temp_sensor="cpu-virtual-0"
cpu_temp_device="temp1_input"

while true; do
	date=$(date +'%a %D | %r %Z')
	battery_status=$(cat $battery/status)
	battery_capacity=$(cat $battery/capacity)
	cpu_usage=$(mpstat 1 1 | tail -1 | awk '{print int(100.5-$12)}')
	ram_usage=$(free --mega | grep Mem: | awk '{print int($3/$2*100+0.5)}')
	cpu_temp=$(sensors $cpu_temp_sensor -u | grep $cpu_temp_device | awk '{print int($2)}')

	echo CPU: $cpu_usage%, $cpu_temp°C \| RAM: $ram_usage% \| $battery_status $battery_capacity% \| $date
done
