#!/bin/bash

# ⛏️ Start Privōx Mining
# Mine PVX coins on mainnet or testnet

echo "⛏️ PRIVŌX MINING STARTER"
echo "========================"
echo ""

# Set paths
PRIVOX_DIR="/workspace/project/privox/build/bin"
cd "$PRIVOX_DIR"

echo "🔧 Choose network:"
echo "1) Mainnet mining (real PVX coins)"
echo "2) Testnet mining (test PVX coins)"
echo ""
read -p "Enter choice (1 or 2): " network_choice

echo ""
read -p "Enter your wallet address: " wallet_address
echo ""
read -p "Enter number of mining threads (1-4 recommended): " threads

case $network_choice in
    1)
        echo ""
        echo "⛏️ Starting MAINNET mining..."
        echo "💰 Mining real PVX coins!"
        echo "🎯 Address: $wallet_address"
        echo "🔧 Threads: $threads"
        echo "💎 Block reward: 120 PVX"
        echo "⏱️ Block time: ~2 minutes"
        echo ""
        echo "🚀 Press Ctrl+C to stop mining"
        echo ""
        ./privoxd \
          --rpc-bind-port 18236 \
          --p2p-bind-port 17236 \
          --confirm-external-bind \
          --start-mining "$wallet_address" \
          --mining-threads "$threads"
        ;;
    2)
        echo ""
        echo "🧪 Starting TESTNET mining..."
        echo "🔬 Mining test PVX coins!"
        echo "🎯 Address: $wallet_address"
        echo "🔧 Threads: $threads"
        echo "💎 Block reward: 120 PVX (test)"
        echo "⏱️ Block time: ~2 minutes"
        echo ""
        echo "🚀 Press Ctrl+C to stop mining"
        echo ""
        ./privoxd \
          --testnet \
          --rpc-bind-port 28236 \
          --p2p-bind-port 27236 \
          --confirm-external-bind \
          --start-mining "$wallet_address" \
          --mining-threads "$threads"
        ;;
    *)
        echo "❌ Invalid choice. Please run the script again."
        exit 1
        ;;
esac