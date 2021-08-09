# Add nginx to example frontend + backend.
#
# Accessing your service from arbitrary port is counter intuitive since browsers use 80 (http) and 443 (https) by default. And having the service refer to two origins in a case where there’s only one backend isn’t desirable either. We will skip the SSL setup for https/443.
#
# Nginx will function as a reverse proxy for us (see the image above). The requests arriving at anything other than /api will be redirected to frontend container and /api will get redirected to backend container.
#
# At the end you should see that the frontend is accessible simply by going to http://localhost and the button works. Other buttons may have stopped working, do not worry about them.
#
# As we will not start configuring reverse proxies on this course you can have a simple config file:
#
# The following file should be set to /etc/nginx/nginx.conf inside the nginx container. You can use a file volume where the contents of the file are the following:
#
# [...]
#
# Nginx, backend and frontend should be connected in the same network. See the image above for how the services are connected.
#
# Submit the docker-compose.yml
#
# Tips for making sure the backend connection works:
#
# Try using your browser to access http://localhost/api/ping and see if it answers pong
#
# It might be nginx configuration problem: Add trailing / to the backend url in the nginx.conf.
#
