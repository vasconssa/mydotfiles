killall polybar
for m in $(polybar --list-monitors | cut -d":" -f1);
do
	MONITOR=$m polybar --reload top &
done

for m in $(polybar --list-monitors | cut -d":" -f1);
do
	MONITOR=$m polybar --reload bottom &
done