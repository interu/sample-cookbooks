# version and sha256 checksum for the zip file from dowload
default[:elasticsearch][:version]  = '0.17.6'
default[:elasticsearch][:checksum] = 'c4e4a67cac55ddc0b5cf3f227e32197a1d2015308a95701b8d88748f43fc624b'

# cluster name
default[:elasticsearch][:cluster_name] = "elastic"

# directories
default[:elasticsearch][:dir][:home]    = "/usr/lib/elasticsearch" 
default[:elasticsearch][:dir][:conf]    = "/etc/elasticsearch"
default[:elasticsearch][:dir][:lib]     = "/var/lib/elasticsearch"
default[:elasticsearch][:dir][:logs]    = "/var/log/elasticsearch"
default[:elasticsearch][:dir][:run]     = "/var/run/elasticsearch"
default[:elasticsearch][:dir][:data]    = "#{default[:elasticsearch][:dir][:lib]}/data"
default[:elasticsearch][:dir][:work]    = "#{default[:elasticsearch][:dir][:lib]}/work"
default[:elasticsearch][:dir][:gateway] = "#{default[:elasticsearch][:dir][:lib]}/gateway"

# use this to configure the network device in case of multiple devices
# see http://www.elasticsearch.org/guide/reference/modules/network.html
default[:elasticsearch][:network][:host] = "_non_loopback_"

# uid for elastic search user
default[:elasticsearch][:user_login] = "elasticsearch"
default[:elasticsearch][:user_uid]   = "61021"

# jvm heap settings
default[:elasticsearch][:heap_size_min] = 128
default[:elasticsearch][:heap_size_max] = 1024

# nofiles limit (make this something like 32768, see /etc/security/limits.conf)
default[:elasticsearch][:fd_ulimit] = 32768

 # replicas are in addition to the original, so 1 replica means 2 copies of each shard
default[:elasticsearch][:default_replicas] = 1

# 6*2 shards per index distributes evenly across 3, 4, or 6 nodes
default[:elasticsearch][:default_shards]   = 6