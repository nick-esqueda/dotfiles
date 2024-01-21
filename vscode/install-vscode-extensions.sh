read -p "Install VSCode extensions? (Y|n): " response

if [[ $response =~ ^[Nn](o)?$ ]]; then
	echo "aborting installation."
	exit
fi

echo "installing extensions..."
while read -r line; do
	code --install-extension "$line"
done < $HOME/.dotfiles/vscode/extensions.txt

echo "done installing VSCode extensions."
