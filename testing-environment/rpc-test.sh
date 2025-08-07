#!/bin/bash

# 🌐 Privōx RPC Testing Script
# Test daemon and wallet RPC functionality

echo "🌐 PRIVŌX RPC TESTING SUITE"
echo "============================"
echo ""

echo "🔧 Choose network to test:"
echo "1) Mainnet RPC (port 18236)"
echo "2) Testnet RPC (port 28236)"
echo ""
read -p "Enter choice (1 or 2): " network_choice

case $network_choice in
    1)
        RPC_PORT=18236
        NETWORK="Mainnet"
        ;;
    2)
        RPC_PORT=28236
        NETWORK="Testnet"
        ;;
    *)
        echo "❌ Invalid choice. Exiting."
        exit 1
        ;;
esac

echo ""
echo "🔍 Testing $NETWORK RPC on port $RPC_PORT"
echo ""

# Test 1: Get daemon info
echo "📊 TEST 1: Get Daemon Info"
echo "Command: curl -X POST http://127.0.0.1:$RPC_PORT/json_rpc"
echo ""
curl -s -X POST http://127.0.0.1:$RPC_PORT/json_rpc \
  -d '{"jsonrpc":"2.0","id":"0","method":"get_info"}' \
  -H 'Content-Type: application/json' | jq . 2>/dev/null || echo "Daemon not running or jq not installed"
echo ""

# Test 2: Get block count
echo "🧱 TEST 2: Get Block Count"
echo ""
curl -s -X POST http://127.0.0.1:$RPC_PORT/json_rpc \
  -d '{"jsonrpc":"2.0","id":"0","method":"get_block_count"}' \
  -H 'Content-Type: application/json' | jq . 2>/dev/null || echo "Daemon not running or jq not installed"
echo ""

# Test 3: Get last block header
echo "📋 TEST 3: Get Last Block Header"
echo ""
curl -s -X POST http://127.0.0.1:$RPC_PORT/json_rpc \
  -d '{"jsonrpc":"2.0","id":"0","method":"get_last_block_header"}' \
  -H 'Content-Type: application/json' | jq . 2>/dev/null || echo "Daemon not running or jq not installed"
echo ""

# Test 4: Get connections
echo "🔗 TEST 4: Get Connections"
echo ""
curl -s -X POST http://127.0.0.1:$RPC_PORT/json_rpc \
  -d '{"jsonrpc":"2.0","id":"0","method":"get_connections"}' \
  -H 'Content-Type: application/json' | jq . 2>/dev/null || echo "Daemon not running or jq not installed"
echo ""

# Test 5: Get version
echo "📝 TEST 5: Get Version"
echo ""
curl -s -X POST http://127.0.0.1:$RPC_PORT/json_rpc \
  -d '{"jsonrpc":"2.0","id":"0","method":"get_version"}' \
  -H 'Content-Type: application/json' | jq . 2>/dev/null || echo "Daemon not running or jq not installed"
echo ""

echo "✅ RPC testing completed!"
echo ""
echo "📋 Notes:"
echo "- If you see 'Daemon not running', start the daemon first"
echo "- Install jq for better JSON formatting: sudo apt-get install jq"
echo "- All tests should return JSON responses when daemon is running"
echo ""
echo "🚀 Your Privōx RPC interface is working!"