# UPDATE PACKAGES #############################################################
sudo apt-get -y update

# INSTALL CURL ################################################################
sudo apt-get install -y curl

# INSTALL NGINX ###############################################################
sudo apt-get -y install nginx

# GET NODE ####################################################################
curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -

# INSTALL NODE ################################################################
sudo apt-get install -y nodejs

sudo npm install -g bower
sudo npm install -g grunt
sudo npm install -g yo


# REMOVE DEFAULT NGINX CONFIG #################################################
rm -rf /etc/nginx/sites-enabled

# Recursively copy the shared config from our shared location to where nginx can use it
cp -r /vagrant/sites-enabled /etc/nginx

# Start nginx #################################################################
service nginx start

