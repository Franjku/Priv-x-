#!/bin/bash

# 🧪 Start Privōx Testnet Daemon
# Safe testing environment with testnet configuration

echo "🧪 STARTING PRIVŌX TESTNET DAEMON"
echo "=================================="
echo ""
echo "🔧 Configuration:"
echo "  📡 P2P Port: 27236"
echo "  🌐 RPC Port: 28236"
echo "  ⚡ ZMQ Port: 29236"
echo "  🏷️  Network: Testnet (addresses start with 'T')"
echo "  💰 Genesis: 10M PVX premine (test coins)"
echo "  🧬 Genesis ID: 47aea06c8ed2fe6ac34bb2cb8eedc94c605ff63128bf1c5061155dfe5d9c4572"
echo ""
echo "🔬 Starting testnet daemon... Press Ctrl+C to stop"
echo ""

# Set paths
PRIVOX_DIR="/workspace/project/privox/build/bin"
cd "$PRIVOX_DIR"

# Start testnet daemon with full configuration
./privoxd \
  --testnet \
  --rpc-bind-port 28236 \
  --p2p-bind-port 27236 \
  --zmq-rpc-bind-port 29236 \
  --confirm-external-bind \
  --rpc-bind-ip 0.0.0.0 \
  --log-level 1 \
  --max-log-file-size 104857600 \
  --max-log-files 50