wget -qO - https://apt.thoughtbot.com/thoughtbot.gpg.key | sudo apt-key add -
echo "deb https://apt.thoughtbot.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/thoughtbot.list
sudo apt-get update && sudo apt-get install -y --no-install-recommends rcm

cp -r ~/dotfiles ~/.dotfiles
(cd ~/ && rcup -v)

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

echo "eval \$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)" >>~/.profile
eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)

brew bundle
