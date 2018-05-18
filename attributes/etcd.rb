default['etcd']['version']               = 'v3.2.15'
default['etcd']['image']                 = 'quay.io/coreos/etcd'
default['etcd']['trusted_ca_file']       = '/etc/kubernetes/ssl/ca.pem'
default['etcd']['client_cert_auth']      = 'true'
default['etcd']['key_file']              = '/etc/kubernetes/ssl/apiserver-key.pem'
default['etcd']['cert_file']             = '/etc/kubernetes/ssl/apiserver.pem'
default['etcd']['peer_trusted_ca_file']  = '/etc/kubernetes/ssl/ca.pem'
default['etcd']['peer_client_cert_auth'] = 'true'
default['etcd']['peer_key_file']         = '/etc/kubernetes/ssl/apiserver-key.pem'
default['etcd']['peer_cert_file']        = '/etc/kubernetes/ssl/apiserver.pem'
default['etcd']['server_port']           = 2380
default['etcd']['client_port']           = 2379
default['etcd']['data_dir']              = '/var/lib/etcd'
default['etcd']['wal_dir']               = '/var/lib/etcd/member/wal'
default['etcd']['proto']                 = 'http'
default['etcd']['binary']                = '/usr/local/bin/etcd'
default['etcd']['user']                  = 'etcd'
default['etcd']['group']                 = 'etcd'
default['etcd']['initial_cluster_token'] = 'etcd-cluster'
default['etcd']['initial_cluster_state'] = 'new'
default['etcd']['role']                  = 'etcd'
