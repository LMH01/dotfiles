# Installs all needed language servers, rust and paru installation is required
paru -S --needed --noconfirm \
	lua-language-server \
	rust-analyzer \
	taplo-cli \
	vscode-langservers-extracted \
	yaml-language-server \
	eslint
cargo install prosemd-lsp
