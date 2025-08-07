# 🚀 Privōx Launch Instructions

## 🎯 Current Status: 95% Complete

Your Privōx cryptocurrency is **almost ready for launch**! Here's exactly what you need to do:

## 📥 Step 1: Get the Code on Your PC

### Download from GitHub:
```bash
git clone https://github.com/your-username/privox.git
cd privox
```

### Or download ZIP and extract to your Ubuntu server

## ⚡ Step 2: Quick Setup

Run the automated setup script:
```bash
chmod +x setup.sh
./setup.sh
```

This will:
- Install all dependencies
- Install Rust
- Initialize submodules  
- Build all binaries
- Test the build

## 🧪 Step 3: Test on Testnet

```bash
cd build

# Start testnet daemon (this currently fails due to genesis block issue)
./bin/privoxd --testnet --no-sync --offline

# If it works, create a wallet in another terminal:
./bin/privox-wallet-cli --testnet
```

## 🛠️ Step 4: Fix Genesis Block (Technical)

**The only remaining issue** is the genesis block validation. The error is:
```
Block with id: <...> has incorrect miner transaction
```

**Files to check:**
- `src/cryptonote_core/cryptonote_tx_utils.cpp` (lines 658-708)
- `src/cryptonote_basic/cryptonote_basic_impl.cpp` (lines 94-99)

**Possible solutions:**
1. Debug the genesis transaction format
2. Adjust the reward calculation
3. Use a simpler genesis transaction

## 🚀 Step 5: Launch Mainnet

Once the genesis block is fixed:

```bash
# Start mainnet daemon
./bin/privoxd

# Create mainnet wallet
./bin/privox-wallet-cli

# Start mining (optional)
./bin/privoxd --start-mining YOUR_WALLET_ADDRESS --mining-threads 2
```

## 📊 Your Privōx Specifications

- **✅ Name**: Privōx (PVX)
- **✅ Supply**: 500 million PVX (8 decimals)
- **✅ Premine**: 10 million PVX (2%)
- **✅ Block Reward**: 120 PVX, halving every ~4 years
- **✅ Tail Emission**: 1 PVX
- **✅ Block Time**: 2 minutes
- **✅ Privacy**: Full Monero privacy features
- **✅ Addresses**: "P" prefix (mainnet), "T" prefix (testnet)
- **✅ Ports**: 17236/18236 (mainnet), 27236/28236 (testnet)
- **✅ Genesis Message**: "Without privacy, anonymity or expression you will never have freedom"

## 🎨 Branding Complete

- **✅ Logo**: Shield-based design (add your logo image to `assets/images/privox-logo.png`)
- **✅ Name**: All "Monero" references changed to "Privōx"
- **✅ Version**: "Privacy Phoenix" v1.0.0
- **✅ Binaries**: privoxd, privox-wallet-cli, privox-wallet-rpc
- **✅ Startup Messages**: All show "Privōx" branding

## 🔧 Manual Adjustments

If you want to change anything:

### Economic Parameters (`src/cryptonote_config.h`):
```cpp
// Line 54: Total supply
static const uint64_t MONEY_SUPPLY = 500000000000000000ULL; // 500M PVX

// Line 232-233: Mainnet ports  
uint16_t const P2P_DEFAULT_PORT = 17236;
uint16_t const RPC_DEFAULT_PORT = 18236;
```

### Block Rewards (`src/cryptonote_basic/cryptonote_basic_impl.cpp`):
```cpp
// Line 96: Genesis premine
uint64_t base_reward = 1000000000000000ULL; // 10M PVX

// Line 108: Block reward
uint64_t base_reward = 12000000000ULL; // 120 PVX

// Line 125: Tail emission  
reward = 100000000ULL; // 1 PVX
```

## 🌍 Next Steps After Launch

1. **🌐 Set up seed nodes** for network connectivity
2. **🔍 Deploy blockchain explorer** 
3. **💻 Create GUI wallet** (fork Monero GUI)
4. **📱 Build mobile wallets**
5. **🏪 List on exchanges**
6. **👥 Build community** (Discord, Reddit, website)
7. **🗳️ Implement private voting** (future feature)
8. **🔗 Add dApp support** (future feature)

## 🆘 Getting Help

### If Build Fails:
```bash
# Clean and rebuild
cd build
make clean
cmake ..
make -j$(nproc)
```

### If Daemon Won't Start:
```bash
# Check detailed logs
./bin/privoxd --testnet --log-level=1

# Clear blockchain data
rm -rf ~/.privox/testnet/lmdb
```

### Key Files to Understand:
- `COMPLETE_SETUP_GUIDE.md` - Detailed technical guide
- `DEVELOPMENT_STATUS.md` - Current progress status
- `src/cryptonote_config.h` - Main configuration
- `src/cryptonote_basic/cryptonote_basic_impl.cpp` - Reward logic

## 🎉 You're Almost There!

**Your cryptocurrency is 95% complete!** The code is fully customized, builds successfully, and just needs the genesis block issue resolved. Once that's fixed, you can launch your privacy-focused Privōx network!

**Estimated time to fix genesis block**: 1-4 hours of debugging
**Estimated time to full launch**: 1-2 days after genesis fix

---

**🛡️ Privōx - Your Shield for Financial Privacy**