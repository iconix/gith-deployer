echo '>>> Updating deploy files'
curl https://raw.githubusercontent.com/iconix/gith-deployer/master/hook.js > hook.js && curl https://raw.githubusercontent.com/iconix/gith-deployer/master/hook.sh > hook.sh && curl https://raw.githubusercontent.com/iconix/gith-deployer/master/package.json > package.json && curl https://raw.githubusercontent.com/iconix/gith-deployer/master/setup.sh > setup.sh
