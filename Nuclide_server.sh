echo "install pre requirement ... "
sudo apt-get update
sudo apt-get install python -y
sudo apt-get install nodejs -y
sudo apt-get install npm -y
sudo ln -s /usr/bin/nodejs /usr/bin/node
node -v
npm -v
echo 'install watch man ...'
git clone https://github.com/facebook/watchman.git
cd watchman/
sudo apt-get install -y autoconf automake build-essential python-dev
./autogen.sh
./configure 
watchman --version
echo 999999 | sudo tee -a /proc/sys/fs/inotify/max_user_watches  && echo 999999 | sudo tee -a  /proc/sys/fs/inotify/max_queued_events && echo 999999 | sudo tee  -a /proc/sys/fs/inotify/max_user_instances && watchman  shutdown-server

echo "install nuclide ...."

sudo npm install -g nuclide
echo "removing watchman foulde"
cd ../ 
sudo rm -R watchman/


