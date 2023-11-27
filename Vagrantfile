# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/mantic64"

  config.vm.provision "shell", inline: <<-SHELL
    apt-get update
    apt-get install -y build-essential
  SHELL

  # Install Rust toolchain for the "vagrant" user
  config.vm.provision "shell", privileged: false, inline: <<-SHELL
    curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
  SHELL
  end
