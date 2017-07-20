# Wrap npm so we can add some custom commands,
#
# npm save => npm install --save
# npm dev  => npm install --save-dev
npm() {
  # "${@[@]:2}" will shift off the first element ($1)
  if [[ $1 == "save" ]]; then
    npm install --save "${@[@]:2}"
  elif [[ $1 == "save-dev" || $1 == "dev" ]]; then
    npm install --save-dev "${@[@]:2}"
  else
    command npm "$@"
  fi
}
