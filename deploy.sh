# Navigate to your project directory

cd /var/project/node-js-docker-cicd

# Navigate to your project jenkins/workspace/ directory
cd /var/lib/jenkins/workspace/nodeapp

# Copy files using rsync
cp * -r /var/project/node-js-docker-cicd

# Navigate to your project directory
cd /var/project/node-js-docker-cicd

# Find the process ID (PID) using port 3000
PID=$(lsof -t -i:3000)

# If the PID is not empty, kill the process
if [ -n "$PID" ]; then
  su -c "kill -9 $PID" -s /bin/bash root
fi

# Navigate to your project directory
cd /var/project/node-js-docker-cicd

# stop pm2 process
pm2 stop ecosystem.config.js

# install node dependency
npm install express

# Run the deploy script
sudo npm run dev

# Find the process ID (PID) using port 3000
PID=$(lsof -t -i:3000)

# You may want to check if the process is still running after the deploy
if [ -n "$PID" ]; then
  echo "The process is still running with PID $PID."
else
  echo "Deployment successful.  process running on port 3000."
fi
