powershell -c "pdk bundle exec bolt project init"
powershell -c "pdk bundle exec bolt module add puppetlabs-reboot"
powershell -c "pdk bundle exec bolt module add puppetlabs-stdlib"
powershell -c "pdk bundle exec bolt module add puppetlabs-powershell"
powershell -c "pdk bundle exec bolt module add tragiccode-wsusserver"