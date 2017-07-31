# Force vscode-oss to build with the extension repo
export VSCODE_NONFREE=1

# Add an alias for it too
which visual-studio-code &> /dev/null &&
alias vscode='visual-studio-code-oss'
