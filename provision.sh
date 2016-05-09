# Update packages
apt-get -y update

# Install nginx
apt-get -y install nginx

# Remove default nginx sites-enabled config
rm -rf /etc/nginx/sites-enabled

# Recursively copy the shared config from our shared location to where nginx can use it
cp -r /vagrant/sites-enabled /etc/nginx

# Start nginx
service nginx start
