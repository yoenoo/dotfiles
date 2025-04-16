set -e 

# brew install
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo >> /Users/yoenoo/.zprofile
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/yoenoo/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

# install programs
brew install --cask iterm2
brew install --cask google-chrome
brew install --cask notion
brew install --cask notion-calendar
brew install --cask obsidian
brew install --cask whatsapp
brew install --cask telegram
brew install --cask cursor
brew install --cask windsurf
brew install --cask visual-studio-code
brew install --cask superwhisper
brew install --cask linear-linear
brew install --cask wireshark
brew install --cask zotero
brew install --cask obs
brew install --cask raycast
brew install docker
brew install --cask topnotch
brew install --cask istat-menus@6
brew install --cask rectangle
brew install --cask loom
brew install --cask zoom
brew install --cask logi-options+
brew install --cask microsoft-office
