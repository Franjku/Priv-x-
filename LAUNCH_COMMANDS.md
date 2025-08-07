# 🚀 Privōx Launch Commands - Ready to Deploy!

## 📋 Repository Status: ✅ ALL BRANCHES PUSHED TO GITHUB

Your Privōx cryptocurrency is now available at: **https://github.com/Franjku/Priv-x-**

### Available Branches:
- ✅ `master` - Development branch
- ✅ `privox-mainnet` - Production mainnet 
- ✅ `privox-testnet` - Testing network

---

## 🖥️ Ubuntu Server Deployment Commands

### Step 1: Clone and Setup
```bash
# Clone your repository
git clone https://github.com/Franjku/Priv-x-.git privox
cd privox

# For MAINNET (Production)
git checkout privox-mainnet

# For TESTNET (Testing)  
git checkout privox-testnet

# Install dependencies and build
sudo apt-get update
sudo apt-get install -y build-essential cmake libboost-all-dev libssl-dev
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
source $HOME/.cargo/env
git submodule update --init --recursive
mkdir build && cd build
cmake ..
make -j$(nproc)
```

### Step 2: Launch Mainnet Daemon
```bash
cd build

# Start mainnet daemon (production)
./bin/privoxd --rpc-bind-port 18236 --p2p-bind-port 17236 --confirm-external-bind

# Or with mining enabled
./bin/privoxd --rpc-bind-port 18236 --p2p-bind-port 17236 --confirm-external-bind --start-mining YOUR_WALLET_ADDRESS --mining-threads 2
```

### Step 3: Launch Testnet Daemon  
```bash
cd build

# Start testnet daemon (testing)
./bin/privoxd --testnet --rpc-bind-port 28236 --p2p-bind-port 27236 --confirm-external-bind
```

---

## 💰 Create Wallet

```bash
# Create new wallet
./bin/privox-wallet-cli --generate-new-wallet mywallet.keys

# Restore from seed
./bin/privox-wallet-cli --restore-deterministic-wallet
```

---

## 🔧 Network Configuration

### Mainnet (Production):
- **Ports**: P2P 17236, RPC 18236, ZMQ 19236
- **Address Prefix**: `P` (addresses start with P)
- **Genesis**: `12376c5ab2a8d1c6788af55a9b738d9405cc45e2085b557b5778b54fb59ca75a`

### Testnet (Testing):
- **Ports**: P2P 27236, RPC 28236, ZMQ 29236  
- **Address Prefix**: `T` (addresses start with T)
- **Genesis**: `47aea06c8ed2fe6ac34bb2cb8eedc94c605ff63128bf1c5061155dfe5d9c4572`

---

## 🔥 Firewall Setup (Ubuntu)

```bash
# Open mainnet ports
sudo ufw allow 17236/tcp  # P2P
sudo ufw allow 18236/tcp  # RPC

# Open testnet ports (if needed)
sudo ufw allow 27236/tcp  # P2P  
sudo ufw allow 28236/tcp  # RPC

# Enable firewall
sudo ufw enable
```

---

## 📊 Verify Deployment

### Check Daemon Status:
```bash
# Should show: "Privōx 'Privacy Phoenix' (v1.0.0-xxxxx)"
./bin/privoxd --version

# Check if daemon is running
curl -X POST http://127.0.0.1:18236/json_rpc -d '{"jsonrpc":"2.0","id":"0","method":"get_info"}' -H 'Content-Type: application/json'
```

### Expected Genesis Block Output:
```
✅ Mainnet: +++++ BLOCK SUCCESSFULLY ADDED
✅ Genesis ID: 12376c5ab2a8d1c6788af55a9b738d9405cc45e2085b557b5778b54fb59ca75a  
✅ Block reward: 10000000.000000 PVX (10M premine)
✅ Status: FULLY OPERATIONAL
```

---

## 🎯 Success Indicators

When your daemon starts successfully, you should see:
- ✅ "+++++ BLOCK SUCCESSFULLY ADDED"
- ✅ "block reward: 10000000.000000"  
- ✅ "Core initialized OK"
- ✅ "p2p server initialized OK"
- ✅ "core RPC server started ok"

---

## 🆘 Troubleshooting

### If daemon fails to start:
1. Check ports aren't in use: `netstat -tulpn | grep :18236`
2. Verify build completed: `ls -la bin/privoxd`
3. Check permissions: `chmod +x bin/privoxd`
4. View logs: Add `--log-level=1` to daemon command

### If genesis block fails:
- This has been fixed! Both networks tested and working
- Genesis blocks generate automatically on first run

---

## 🎉 Status: READY FOR LAUNCH!

Your Privōx cryptocurrency is **100% complete** and ready for production deployment!

**Repository**: https://github.com/Franjku/Priv-x-
**Status**: ✅ FULLY OPERATIONAL
**Networks**: ✅ Mainnet & Testnet Ready
**Genesis Blocks**: ✅ Tested and Working