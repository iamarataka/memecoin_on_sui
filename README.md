
# 🌊 WaveCoin: A Memecoin on the Sui Blockchain

Welcome to **WaveCoin** — a fun, community-driven memecoin built on the blazing-fast **Sui blockchain**. This project includes the full Move smart contract code to create, mint, and deploy your own custom fungible token with an image, metadata, and total supply control.

---

## 📌 Overview

This repo is a **complete developer guide and working example** of launching a memecoin on the Sui testnet.

**Key Features:**
- Built in Move for the Sui blockchain
- Total token supply: 1 billion WaveCoins (with 9 decimals)
- Immutable metadata and treasury once deployed
- Base64-encoded token image embedded directly in the contract

---

## 🚀 Quick Start

### 📖 Prerequisites

- [Install Sui CLI](https://docs.sui.io/guides/developer/getting-started/sui-install)
- Familiarity with basic Move language and blockchain concepts

---

## 📦 Project Structure

```
memecoin_on_sui/
 ├── Move.toml
 ├── sources/
 │   └── wavecoin.move
 ├── README.md
```

---

## 📝 Smart Contract Overview

WaveCoin Move contract is located inside `sources/wavecoin.move`

**Key functionalities:**
- Mint total supply at deployment
- Transfer tokens to contract creator’s address
- Freeze treasury and metadata for post-deployment immutability

---

## 🖼️ Token Image

The contract uses a **base64-encoded image string** embedded directly in the contract via:

```move
option::some(new_unsafe_from_bytes(IMG_BASE_64))
```

👉 Replace the `IMG_BASE_64` constant in `wavecoin.move` with your own base64 image (keep it under 1KB for efficiency).

---

## 🔨 Deploying on Sui Testnet

1. Install and configure your Sui environment
2. Clone this repo:
   ```bash
   git clone https://github.com/yourhandle/memecoin_on_sui.git
   cd memecoin_on_sui
   ```
3. Update Memecoin metadata properties according to your need in the memecoin.move file
- const TOTAL_SUPPLY: u64 = <TOTAL_SUPPLY_OF_MEMECOIN>
- const NAME: vector<u8> = <MEMECOIN_NAME>;
- const SYMBOL: vector<u8> = <MEMECOIN_SYMBOL>;
- const DESCRIPTION: vector<u8> = <MEMECOIN_DESCRTIPTION>
- const IMG_BASE_64: vector<u8> = <IMG_DATA>
- Replace `wavecoin` with your memecoin name for module and OTW(One Time Witness)

3. Publish the package:
   ```bash
   sui client publish --gas-budget 30000000
   ```

5. View your coin on [Sui Explorer](https://explorer.sui.io/)

---

## 📝 Next Steps

- Integrate liquidity pools via Sui DeFi protocols
- Conduct security audits and code reviews
- Launch a community airdrop campaign
- List on memecoin trackers and marketplaces

---

## 🤝 Contributing

Got a meme-worthy idea? Open a PR or issue — we welcome new token concepts and DeFi integrations built on Sui.

---

## 📜 License

MIT License © 2025 WaveCoin Project

---

## 🌊 Ride the Wave, Own the Vibe.
