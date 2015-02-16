echo '>>> Updating deploy files'
curl https://raw.githubusercontent.com/iconix/gith-deployer/master/hook.js > hook.js && curl https://raw.githubusercontent.com/iconix/gith-deployer/master/hook.sh > hook.sh && curl https://raw.githubusercontent.com/iconix/gith-deployer/master/package.json > package.json && curl https://raw.githubusercontent.com/iconix/gith-deployer/master/setup.sh > setup.sh

echo '>>> Pulling pre-built logspout router'
docker pull progrium/logspout

echo '>>> Creating/starting logspout to monitor Docker Unix socket'
docker run -p 8000:8000 -d -v=/var/run/docker.sock:/tmp/docker.sock -h $HOSTNAME progrium/logspout syslog://logs2.papertrailapp.com:24683
