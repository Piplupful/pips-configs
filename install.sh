if command -v pacman > /dev/null 2>&1; then
   PACKAGE_MANAGER="pacman"
elif command -v apt install &> /dev/null; then
   PACKAGE_MANAGER="apt"
else
   echo "No package manager found: [pacman, apt-get/apt install]"
   exit 1
fi

echo "Package manager: $PACKAGE_MANAGER"

# Fastfetch
if [ "$PACKAGE_MANAGER" = "pacman" ]; then
   sudo pacman -S fastfetch
elif [ "$PACKAGE_MANAGER" = "apt" ]; then
   sudo add-apt-repository ppa:zhangsongcui3371/fastfetch
   sudo apt update
   sudo apt install fastfetch
fi

# Rust/Cargo
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# Golang
if [ "$PACKAGE_MANAGER" = "pacman" ]; then
   sudo pacman -Syu golang
elif [ "$PACKAGE_MANAGER" = "apt" ]; then
   sudo apt install golang
fi

# Pokeget: https://github.com/talwat/pokeget-rs
cargo install pokeget

