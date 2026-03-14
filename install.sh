#!/usr/bin/env bash
set -e

echo "🚀 Namoneo Mac Dev Setup Starting..."

# Install Xcode CLI tools
xcode-select --install || true

# Install Homebrew if not installed
if ! command -v brew &>/dev/null; then
  echo "Installing Homebrew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

brew update

echo "📦 Installing Brew packages..."
brew bundle

echo "⚙️ Installing developer tools..."
bash scripts/install-devtools.sh

echo "📦 Installing Node environment..."
bash scripts/install-node.sh

echo "🅰️ Installing Angular CLI..."
bash scripts/install-angular.sh

echo "🤖 Installing AI tools..."
bash scripts/install-ai.sh

echo "🐚 Configuring shell..."
cp shell/.zshrc ~/.zshrc

echo ""
echo "✅ Mac setup completed!"
