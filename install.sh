wget -qO - https://apt.thoughtbot.com/thoughtbot.gpg.key | sudo apt-key add -
echo "deb https://apt.thoughtbot.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/thoughtbot.list
sudo apt-get update
sudo apt-get install -y rcm

cp -r ~/dotfiles ~/.dotfiles
(cd ~/ && rcup -v)

sudo apt-get install -y tmux