# Run VTE to fix tilix in non-login mode
vte="/etc/profile.d/vte.sh"
[ -f "$vte" ] && source "$vte"
