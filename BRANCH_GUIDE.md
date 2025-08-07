# Privōx (PVX) Branch Guide

## 🌟 Repository Structure

This repository contains **3 branches** for different purposes:

### 📋 Branch Overview

| Branch | Purpose | Network | Ports | Address Prefix | Status |
|--------|---------|---------|-------|----------------|--------|
| `master` | Development & Source | Both | Both | Both | ✅ Active |
| `privox-mainnet` | Production Mainnet | Mainnet | 17236/18236/19236 | P | ✅ Ready |
| `privox-testnet` | Testing Network | Testnet | 27236/28236/29236 | T | ✅ Ready |

---

## 🚀 Quick Start Commands

### For Mainnet (Production):
```bash
git clone https://github.com/YOUR_USERNAME/privox.git
cd privox
git checkout privox-mainnet
./setup.sh
cd build
./bin/privoxd
```

### For Testnet (Testing):
```bash
git clone https://github.com/YOUR_USERNAME/privox.git
cd privox
git checkout privox-testnet
./setup.sh
cd build
./bin/privoxd --testnet
```

---

## 🔧 Network Configuration

### Mainnet Configuration:
- **P2P Port**: 17236
- **RPC Port**: 18236  
- **ZMQ Port**: 19236
- **Address Prefix**: `P` (addresses start with P)
- **Genesis Block**: `12376c5ab2a8d1c6788af55a9b738d9405cc45e2085b557b5778b54fb59ca75a`

### Testnet Configuration:
- **P2P Port**: 27236
- **RPC Port**: 28236
- **ZMQ Port**: 29236  
- **Address Prefix**: `T` (addresses start with T)
- **Genesis Block**: `47aea06c8ed2fe6ac34bb2cb8eedc94c605ff63128bf1c5061155dfe5d9c4572`

---

## 💰 Economic Parameters (Both Networks)

- **Total Supply**: 500,000,000 PVX
- **Decimals**: 6 (1 PVX = 1,000,000 atomic units)
- **Genesis Premine**: 10,000,000 PVX
- **Block Reward**: 120 PVX (halving every ~4 years)
- **Block Time**: 2 minutes
- **Tail Emission**: 1 PVX per block after 490M PVX emitted

---

## 📁 Key Files to Modify

If you need to adjust settings:

- **Network Config**: `src/cryptonote_config.h`
- **Block Rewards**: `src/cryptonote_basic/cryptonote_basic_impl.cpp`
- **Genesis Generation**: `src/cryptonote_core/cryptonote_tx_utils.cpp`

---

## ✅ Verification

Both networks have been tested and are **fully operational**:

- ✅ Genesis blocks generate successfully
- ✅ Daemons start without errors
- ✅ 10M PVX premine correctly allocated
- ✅ All values fit within uint64_t limits
- ✅ Network separation working (different ports/prefixes)

---

## 🆘 Support

If you encounter issues:

1. Check that you're on the correct branch
2. Ensure all dependencies are installed (`./setup.sh`)
3. Verify ports are not in use
4. Check the build completed successfully

**Status**: 🎉 **READY FOR LAUNCH!**