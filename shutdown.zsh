export shutdown-after() {
	$@
	systemctl poweroff -i
}
alias sa="shutdown-after"
