# Set bundler to install in the user directory, not system wide
export GEM_HOME=$(ruby -e 'print Gem.user_dir')

# Add gems to PATH
export PATH="$GEM_HOME/bin:$PATH"
