"Welcome to Cloud aseem Youtube channel"**
Follow  the Guide files Steps - Guide for Node js Deployment in this repo

# Node public repo  subscribe to my channel , thanks you

**Simple node.js app that servers "Welcome to Cloud aseem Youtube channel"**

Great for testing simple deployments on Cloud

## Step 1: Install NodeJS and NPM using nvm

Follow this Medium blog to install Node.js & npm on EC2 server. 
Link below

https://medium.com/@mohdaseemakram19/node-js-introduction-installation-of-node-js-on-aws-ec2-2350b7b95581



sudo apt-get update
sudo apt-get install -y ca-certificates curl gnupg
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://deb.nodesource.com/gpgkey/nodesource-repo.gpg.key | sudo gpg --dearmor -o /etc/apt/keyrings/nodesource.gpg

NODE_MAJOR=20
echo "deb [signed-by=/etc/apt/keyrings/nodesource.gpg] https://deb.nodesource.com/node_$NODE_MAJOR.x nodistro main" | sudo tee /etc/apt/sources.list.d/nodesource.list

sudo apt-get update
sudo apt-get install nodejs -y

Check Installation of nodejs packages
node -v
v18.18.2
npm -v
9.8.1

## Step 2: Install Git and clone repository from GitHub
To install git, run below commands in the terminal window:

```bash
sudo apt-get update -y
sudo apt-get install git -y
```

Just to verify if system has git installed or not, please run below command in terminal:
```bash
git — version
```
git clone https://github.com/Aseemakram19/node-js-docker-cicd.git

cd node-js-docker-cicd

1.	Run the following command to install the required dependencies (Express):
npm install express 
2.	Once the installation is complete, run the following command to start the server:
nohup node index.js &
3.	You should see the message "Server is running on http://ip:3000" in the terminal.
4.	Open your web browser and navigate to http://ip:3000. You should see the welcome page with the specified styling.
5. Kill the existing build on error
  sudo lsof -i :3000
 list the app running on port
    kill -15 pid

Restart the process again 
1. npm install express
2. nohup node index.js &

