# -*- mode: ruby -*-
# vi: set ft=ruby :
#
# Configure Vagrant environment with Foma
#
# Copyright 2018-2019 Wincent Balin
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

Vagrant.configure("2") do |config|
    config.vm.box = "ubuntu/bionic64"

    config.vm.provider "virtualbox" do |vb|
        vb.gui = false     # we log into here using ssh
        vb.cpus = 2        # my computer has that many
        vb.memory = 4096   # We will compile a couple of things
        vb.customize ["modifyvm", :id, "--ioapic", "on"]
    end

    config.vm.provision "shell", inline: <<-SHELL
    # Update packages
    apt-get update
    #apt-get upgrade -y

    # Install utilities
    apt-get install -y tmux vim mc

    # Install Foma
    apt-get install -y foma-bin

    # Install Graphviz to be able to look at diagrams
    apt-get install -y graphviz

    # Link host directory into home directory
    ln -s /vagrant /home/vagrant/work
SHELL
end
