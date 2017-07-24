export notify-after() {
	$@
	rtn=$? cmd="$@"
	if [ $rtn -eq 0 ]; then
		notify-send "Command completed successfully" "$cmd"
	else
		notify-send "Command failed misurably ($rtn)" "$cmd"
	fi
}
alias na="notify-after"
