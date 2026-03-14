#!/usr/bin/env bash
set -e

echo "🚀 Namoneo Mac Dev Setup Starting..."

xcode-select --install || true

if ! command -v brew &>/dev/null; then
  echo "Installing Homebrew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

brew update

echo "📦 Installing Brew packages..."
curl -fsSL https://raw.githubusercontent.com/Namoneo/mac-setup/main/Brewfile -o Brewfile
brew bundle --file=Brewfile

echo "⚙️ Installing developer tools..."
curl -fsSL https://raw.githubusercontent.com/Namoneo/mac-setup/main/scripts/install-devtools.sh | bash

echo "📦 Installing Node..."
curl -fsSL https://raw.githubusercontent.com/Namoneo/mac-setup/main/scripts/install-node.sh | bash

echo "🅰️ Installing Angular..."
curl -fsSL https://raw.githubusercontent.com/Namoneo/mac-setup/main/scripts/install-angular.sh | bash

echo "🤖 Installing AI tools..."
curl -fsSL https://raw.githubusercontent.com/Namoneo/mac-setup/main/scripts/install-ai.sh | bash

echo "✅ Setup completed!"
