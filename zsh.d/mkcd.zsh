# A small function to create a directory and then change into it
mkcd() {
	mkdir -p $1 &&
	pushd -q $1
}
