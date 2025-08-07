# 🚀 How to Create Privōx Release with GitHub Actions

## ✅ GitHub Actions Setup Complete!

I've added 3 automated workflows to your repository:

1. **`build-daemon.yml`** - Builds automatically on every push
2. **`create-release.yml`** - Manual release creation (RECOMMENDED)
3. **`build-release.yml`** - Advanced release with GUI wallet

---

## 🎯 Create Your First Release (Easy Method)

### Step 1: Go to GitHub Actions
1. Visit: https://github.com/Franjku/Priv-x-/actions
2. Click on **"Create Privōx Release"** workflow
3. Click **"Run workflow"** button (top right)

### Step 2: Configure Release
Fill in the form:
- **Release version**: `v1.0.0` (or your preferred version)
- **Release name**: `Privōx Genesis Release` (or your preferred name)
- Click **"Run workflow"**

### Step 3: Wait for Build
- The workflow will take ~10-15 minutes to complete
- You can watch the progress in real-time
- It will automatically build all binaries and create the release

### Step 4: Download Your Release
1. Go to: https://github.com/Franjku/Priv-x-/releases
2. Your new release will appear with downloadable files:
   - `privox-daemon-linux-x64.tar.gz` - Complete daemon package
   - `checksums.txt` - SHA256 verification

---

## 📦 What You'll Get

### Release Package Contents:
```
privox-daemon-linux-x64/
├── privoxd                    # Main daemon
├── privox-wallet-cli          # Command-line wallet
├── privox-wallet-rpc          # RPC wallet server
├── privox-blockchain-*        # Blockchain utilities
├── start-mainnet.sh          # Launch mainnet (one-click)
├── start-testnet.sh          # Launch testnet (one-click)
├── create-wallet.sh          # Create wallet (one-click)
├── README-PACKAGE.md         # Package instructions
├── LAUNCH_COMMANDS.md        # Detailed commands
└── DEPLOYMENT_READY.md       # Deployment guide
```

### Easy Launch Scripts:
- **`start-mainnet.sh`** - Starts production mainnet daemon
- **`start-testnet.sh`** - Starts testing network daemon
- **`create-wallet.sh`** - Creates new wallet interactively

---

## 🖥️ User Instructions (for your users)

Once you create the release, users can:

```bash
# Download and extract
wget https://github.com/Franjku/Priv-x-/releases/download/v1.0.0/privox-daemon-linux-x64.tar.gz
tar -xzf privox-daemon-linux-x64.tar.gz
cd privox-daemon-linux-x64

# Start mainnet (production)
./start-mainnet.sh

# Or start testnet (testing)
./start-testnet.sh

# Create wallet
./create-wallet.sh
```

---

## 🔄 Automatic Builds

The `build-daemon.yml` workflow runs automatically when you:
- Push to master, privox-mainnet, or privox-testnet branches
- Create pull requests
- This ensures your code always builds successfully

---

## 🎉 Ready to Launch!

**Your GitHub Actions are now set up and ready!**

### Next Steps:
1. **Go to GitHub Actions tab**
2. **Run "Create Privōx Release" workflow**
3. **Wait 10-15 minutes for build**
4. **Download from Releases page**
5. **Share with users!**

### Repository: https://github.com/Franjku/Priv-x-
### Actions: https://github.com/Franjku/Priv-x-/actions
### Releases: https://github.com/Franjku/Priv-x-/releases

**Status: Ready to create your first release!** 🚀