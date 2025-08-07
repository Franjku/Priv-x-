# Privōx (PVX) - Privacy-Focused Cryptocurrency

<div align="center">
  <img src="assets/images/privox-logo.png" alt="Privōx Logo" width="200"/>
  <h3>🛡️ Without privacy, anonymity or expression you will never have freedom 🛡️</h3>
</div>

Privōx is a privacy-focused cryptocurrency forked from Monero, designed to provide complete financial privacy and anonymity with a shield-based security approach.

## 🛡️ Key Features

- **Total Supply**: 500 million PVX
- **Decimals**: 8 decimal places  
- **Premine**: 10 million PVX (2% of total supply)
- **Block Time**: 2 minutes
- **Initial Block Reward**: 120 PVX
- **Halving Schedule**: Every 2,102,400 blocks (~4 years)
- **Tail Emission**: 1 PVX after 490M PVX emitted
- **Privacy**: Full Monero privacy features (ring signatures, stealth addresses, RingCT)

## 🌐 Network Configuration

### Mainnet
- **Address Prefix**: "P" (addresses start with P)
- **P2P Port**: 17236
- **RPC Port**: 18236
- **ZMQ Port**: 19236

### Testnet
- **Address Prefix**: "T" (addresses start with T)
- **P2P Port**: 27236
- **RPC Port**: 28236
- **ZMQ Port**: 29236

## 🏗️ Building

### Dependencies
```bash
sudo apt-get update
sudo apt-get install -y build-essential cmake libboost-all-dev libssl-dev libzmq3-dev libunbound-dev libsodium-dev libunwind8-dev liblzma-dev libreadline6-dev libldns-dev libexpat1-dev doxygen graphviz libpgm-dev qttools5-dev-tools libhidapi-dev libusb-1.0-0-dev libprotobuf-dev protobuf-compiler libudev-dev
```

### Install Rust
```bash
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
source $HOME/.cargo/env
```

### Build
```bash
git clone https://github.com/your-username/privox.git
cd privox
git submodule update --init --recursive
mkdir build && cd build
cmake ..
make -j$(nproc)
```

## 🚀 Running

### Daemon (Mainnet)
```bash
./bin/privoxd
```

### Daemon (Testnet)
```bash
./bin/privoxd --testnet
```

### Wallet CLI
```bash
./bin/privox-wallet-cli
```

### Wallet RPC
```bash
./bin/privox-wallet-rpc
```

## 💡 Use Cases

1. **🔒 Anonymous Payments**: Complete privacy for all transactions
2. **🗳️ Private Voting**: Future implementation using zero-knowledge proofs
3. **🌐 Censorship-Resistant dApps**: Decentralized applications with privacy

## 💰 Premine Allocation

The 10M PVX premine is transparently allocated as follows:
- **Development Fund**: 4M PVX (40%)
- **Marketing**: 1M PVX (10%)
- **Airdrop**: 1.5M PVX (15%)
- **Bug Bounty**: 1M PVX (10%)
- **Exchange Liquidity**: 1M PVX (10%)
- **Owner's Fund**: 500k PVX (5%)
- **Billboards**: 500k PVX (5%)
- **OTC Sales**: 500k PVX (5%)
- **Emergency Fund**: 500k PVX (5%)
- **Competitions**: 300k PVX (3%)
- **Raid Payouts**: 200k PVX (2%)

All premine wallets are labeled and transparent on the blockchain explorer.

## 📄 License

This project is licensed under the BSD 3-Clause License - see the LICENSE file for details.

## 🤝 Contributing

Contributions are welcome! Please read our contributing guidelines before submitting pull requests.

## 🌍 Community

- **Discord**: [Coming Soon]
- **Reddit**: [Coming Soon]
- **Bitcointalk**: [Coming Soon]
- **Website**: [Coming Soon]

## ⚠️ Disclaimer

This software is experimental. Use at your own risk. Always verify transactions and keep your private keys secure.

---

<div align="center">
  <strong>Privōx - Your Shield for Financial Privacy</strong>
</div>