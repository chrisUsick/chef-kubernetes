default['kubernetes']['addons']['dns']['controller']             = 'kubedns'
default['kubernetes']['addons']['dns']['antiaffinity_type']      = 'requiredDuringSchedulingIgnoredDuringExecution'
default['kubernetes']['addons']['kubedns']['dns_forward_max']    = 150
default['kubernetes']['addons']['kubedns']['version']            = '1.14.7'
default['kubernetes']['addons']['kubedns']['limits']['cpu']      = '100m'
default['kubernetes']['addons']['kubedns']['limits']['memory']   = '170Mi'
default['kubernetes']['addons']['kubedns']['requests']['cpu']    = '100m'
default['kubernetes']['addons']['kubedns']['requests']['memory'] = '70Mi'
default['kubernetes']['addons']['coredns']['version']            = '0.9.10'
default['kubernetes']['addons']['coredns']['limits']['cpu']      = '100m'
default['kubernetes']['addons']['coredns']['limits']['memory']   = '256Mi'
default['kubernetes']['addons']['coredns']['requests']['cpu']    = '100m'
default['kubernetes']['addons']['coredns']['requests']['memory'] = '256Mi'
default['kubernetes']['addons']['coredns']['log']                = false
default['kubernetes']['addons']['dashboard']['version']          = 'v1.7.1'
default['kubernetes']['addons']['dashboard']['init_version']     = 'v1.0.1'
