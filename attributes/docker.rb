default['docker']['version']                    = '17.03.1~ce-0'
default['docker']['settings']['storage-driver'] = 'aufs'
default['docker']['settings']['live-restore']   = true
default['docker']['settings']['iptables']       = false
default['docker']['settings']['ip-masq']        = false
default['docker']['settings']['exec-opts']      = ["native.cgroupdriver=systemd"]
