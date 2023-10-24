# Deployment Instructions

This folder contains all the deployment configuration.

The deployment is structured as a reverse proxy, with two nginx config files:
- one for hosting the sisilace website, behind the proxy (nginx_website.conf)
- one for hosting the reverse proxy, which redirects http requests to https

There is a deploy.sh script which will copy all of the files from this folder (deployment) to the sisilace webserver. However, make sure that once there, the files are pulled out of the deployment folder and into the sisilace folder (at the time of that writing, that would be /home/sisilace/sisilace - so one directory up). This is in order to make use of the certbot https certificate present there.

Once all the files are in the /home/sisilace/sisilace folder, the following command will start the website:
$ sudo docker compose up -d 

The https certificate is automatically renewed, every 62 days, through a crontab job set by the root user. The job relies on having the docker-compose.certbot.yml file in the /home/sisilace/sisilace folder.