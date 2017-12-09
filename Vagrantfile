
Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/xenial64"

	$script = <<-SCRIPT
	cd /tmp/Docker
	chmod 777 /tmp/Docker/vgfile.sh
	./vgfile.sh
	SCRIPT

config.vm.synced_folder "Docker", "/tmp/Docker"
config.vm.provision "shell", inline: $script, :run => 'always'
end