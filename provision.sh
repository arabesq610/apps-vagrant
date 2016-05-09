# Update packages
apt-get -y update

# Install nginx
apt-get -y install nginx

# Remove default nginx web root
rm -rf /usr/share/nginx/www

# Create symlink to shared loc
ln -s /vagrant/src /usr/share/nginx/www

# Start nginx
service nginx start
