#
# Cookbook Name:: kubernetes
# Recipe:: cri-o
#
# Author:: Maxim Filatov <bregor@evilmartians.com>
#

chef_gem 'toml-rb'

package 'docker-engine' do
  action :remove
end

apt_repository 'cri-o' do
  uri 'ppa:projectatomic/ppa'
  distribution node['lsb']['codename']
end

package 'cri-o'

require 'toml-rb'

file '/etc/crio/crio.conf' do
  owner 'root'
  group 'root'
  mode '0644'
  content(TomlRB.dump({crio: node['crio']}))
  notifies :restart, 'service[crio]'
end

service 'crio' do
  action [:start, :enable]
end
