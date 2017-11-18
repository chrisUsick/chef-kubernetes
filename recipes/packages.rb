#
# Cookbook Name:: kubernetes
# Recipe:: packages
#
# Author:: Maxim Filatov <bregor@evilmartians.com>
#

package 'iptables'
package 'ebtables'
package 'socat'
package 'ethtool'
package 'kmod'
package 'tcpd'
package 'dbus'
package 'apt-transport-https'
package 'conntrack'
package 'linux-image-extra-virtual' if node['docker']['settings']['storage-driver'] == 'aufs'

directory "/opt/kubernetes/#{node['kubernetes']['version']}/bin" do
  recursive true
end

%w(kubelet kubectl).each do |f|
  remote_file "/opt/kubernetes/#{node['kubernetes']['version']}/bin/#{f}" do
    source "https://storage.googleapis.com/kubernetes-release/release/#{node['kubernetes']['version']}/bin/linux/amd64/#{f}"
    mode '0755'
    not_if do
      begin
        Digest::MD5.file("/opt/kubernetes/#{node['kubernetes']['version']}/bin/#{f}").to_s == node['kubernetes']['md5'][f.to_sym]
      rescue
        false
      end
    end
  end
end

link '/usr/local/bin/kubectl' do
  to "/opt/kubernetes/#{node['kubernetes']['version']}/bin/kubectl"
end
