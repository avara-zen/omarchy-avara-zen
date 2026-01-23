# echo "Install rustup by download and run official sctipt"

# curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
# source ~/.profile
# source ~/.cargo/env

echo "Install rustup by pamac"

omarchy-pkg-add rustup
# rustup toolchain install stable
rustup default stable
