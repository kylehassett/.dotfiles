#!bin/bash/

choco install cmake --installargs '"ADD_CMAKE_TO_PATH=System"' -y
choco install llvm -y
cd neovide
cargo build --release
