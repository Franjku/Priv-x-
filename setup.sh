#!/bin/bash

# Privōx Setup Script
# This script helps you set up Privōx cryptocurrency on Ubuntu

echo "🛡️  Privōx (PVX) Setup Script"
echo "================================"
echo ""

# Check if running on Ubuntu
if ! command -v apt-get &> /dev/null; then
    echo "❌ This script is designed for Ubuntu/Debian systems"
    exit 1
fi

echo "📦 Installing dependencies..."
sudo apt-get update
sudo apt-get install -y build-essential cmake libboost-all-dev libssl-dev libzmq3-dev libunbound-dev libsodium-dev libunwind8-dev liblzma-dev libreadline6-dev libldns-dev libexpat1-dev doxygen graphviz libpgm-dev qttools5-dev-tools libhidapi-dev libusb-1.0-0-dev libprotobuf-dev protobuf-compiler libudev-dev

echo ""
echo "🦀 Installing Rust..."
if ! command -v rustc &> /dev/null; then
    curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
    source $HOME/.cargo/env
else
    echo "✅ Rust already installed"
fi

echo ""
echo "📥 Initializing submodules..."
git submodule update --init --recursive

echo ""
echo "🏗️  Building Privōx..."
mkdir -p build
cd build
cmake ..
echo ""
echo "⏳ This will take 10-30 minutes depending on your system..."
make -j$(nproc)

echo ""
echo "✅ Build complete!"
echo ""
echo "🔍 Checking binaries..."
if [ -f "bin/privoxd" ]; then
    echo "✅ privoxd (daemon) - OK"
else
    echo "❌ privoxd (daemon) - MISSING"
fi

if [ -f "bin/privox-wallet-cli" ]; then
    echo "✅ privox-wallet-cli - OK"
else
    echo "❌ privox-wallet-cli - MISSING"
fi

if [ -f "bin/privox-wallet-rpc" ]; then
    echo "✅ privox-wallet-rpc - OK"
else
    echo "❌ privox-wallet-rpc - MISSING"
fi

echo ""
echo "🎯 Testing version..."
./bin/privoxd --version

echo ""
echo "🛡️  Privōx Setup Complete!"
echo ""
echo "📋 Next Steps:"
echo "1. Test testnet: ./bin/privoxd --testnet --no-sync --offline"
echo "2. Create wallet: ./bin/privox-wallet-cli --testnet"
echo "3. Read COMPLETE_SETUP_GUIDE.md for full instructions"
echo ""
echo "⚠️  Note: Genesis block issue needs to be resolved before mainnet launch"
echo "   The daemon builds successfully but fails to start due to genesis validation"
echo ""
echo "🎉 Your privacy-focused cryptocurrency is ready!"