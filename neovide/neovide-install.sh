#!bin/bash/

echo "Building neovide"

choco install cmake --installargs '"ADD_CMAKE_TO_PATH=System"' -y
choco install llvm -y
cd neovide
cargo build --release
cd ../

echo "Setting nvid to run neovide..."

ln -s ~/.dotfiles/neovide/neovide/target/release/neovide /usr/local/bin/nvid

echo "Neovide's done."
