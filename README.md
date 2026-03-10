# Homebrew Tap for Whistler

This is the official Homebrew tap for [Whistler](https://github.com/Albertlungu/Whistler), a lightweight code editor built with Rust and iced.

## Installation

**Note:** Homebrew formula installation is currently under development. For now, please install Whistler using one of these methods:

### Option 1: Download from Releases (Recommended for macOS)
Download the latest `.dmg` file from the [Releases page](https://github.com/Albertlungu/Whistler/releases) and drag Whistler to your Applications folder.

### Option 2: Build from Source
```bash
git clone https://github.com/Albertlungu/Whistler.git
cd Whistler/whistler
cargo build --release
# Binary will be at target/release/Whistler
```

### Option 3: Install with Cargo
```bash
git clone https://github.com/Albertlungu/Whistler.git
cd Whistler/whistler
cargo install --path .
```

## Homebrew Formula (In Development)

We're working on a proper Homebrew formula. Once ready, you'll be able to install with:

```bash
brew tap albertlungu/whistler
brew install whistler
```

## Uninstallation

```bash
brew untap albertlungu/whistler
```
