#!/bin/bash

# 🚀 Start Privōx Mainnet Daemon
# Production-ready mainnet daemon with all features

echo "🚀 STARTING PRIVŌX MAINNET DAEMON"
echo "=================================="
echo ""
echo "🔧 Configuration:"
echo "  📡 P2P Port: 17236"
echo "  🌐 RPC Port: 18236"
echo "  ⚡ ZMQ Port: 19236"
echo "  🏷️  Network: Mainnet (addresses start with 'P')"
echo "  💰 Genesis: 10M PVX premine"
echo "  🧬 Genesis ID: 12376c5ab2a8d1c6788af55a9b738d9405cc45e2085b557b5778b54fb59ca75a"
echo ""
echo "🔥 Starting daemon... Press Ctrl+C to stop"
echo ""

# Set paths
PRIVOX_DIR="/workspace/project/privox/build/bin"
cd "$PRIVOX_DIR"

# Start mainnet daemon with full configuration
./privoxd \
  --rpc-bind-port 18236 \
  --p2p-bind-port 17236 \
  --zmq-rpc-bind-port 19236 \
  --confirm-external-bind \
  --rpc-bind-ip 0.0.0.0 \
  --log-level 1 \
  --max-log-file-size 104857600 \
  --max-log-files 50