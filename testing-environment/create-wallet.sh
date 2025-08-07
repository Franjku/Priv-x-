#!/bin/bash

# 💼 Create Privōx Wallet
# Interactive wallet creation for mainnet or testnet

echo "💼 PRIVŌX WALLET CREATOR"
echo "========================"
echo ""

# Set paths
PRIVOX_DIR="/workspace/project/privox/build/bin"
cd "$PRIVOX_DIR"

echo "🔧 Choose network:"
echo "1) Mainnet (production, addresses start with 'P')"
echo "2) Testnet (testing, addresses start with 'T')"
echo ""
read -p "Enter choice (1 or 2): " network_choice

case $network_choice in
    1)
        echo ""
        echo "🚀 Creating MAINNET wallet..."
        echo "💰 This wallet will hold real PVX coins"
        echo "🔒 Keep your seed phrase safe!"
        echo ""
        read -p "Enter wallet name (e.g., mywallet): " wallet_name
        echo ""
        echo "Command: ./privox-wallet-cli --generate-new-wallet ${wallet_name}.keys"
        ./privox-wallet-cli --generate-new-wallet "${wallet_name}.keys"
        ;;
    2)
        echo ""
        echo "🧪 Creating TESTNET wallet..."
        echo "🔬 This wallet is for testing only"
        echo "💡 Test coins have no real value"
        echo ""
        read -p "Enter wallet name (e.g., testwallet): " wallet_name
        echo ""
        echo "Command: ./privox-wallet-cli --testnet --generate-new-wallet ${wallet_name}.keys"
        ./privox-wallet-cli --testnet --generate-new-wallet "${wallet_name}.keys"
        ;;
    *)
        echo "❌ Invalid choice. Please run the script again."
        exit 1
        ;;
esac

echo ""
echo "✅ Wallet creation completed!"
echo ""
echo "📋 Next steps:"
echo "1. Start the daemon (mainnet or testnet)"
echo "2. Open your wallet: ./privox-wallet-cli --wallet-file ${wallet_name}.keys"
echo "3. Get your address: type 'address' in the wallet"
echo "4. Start mining to that address"
echo ""
echo "🔐 IMPORTANT: Save your 25-word seed phrase securely!"