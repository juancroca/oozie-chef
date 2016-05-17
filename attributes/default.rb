include_attribute "kagent"
include_attribute "apache_hadoop"
include_attribute "hops"
include_attribute "hadoop_spark"


node.oozie.version                  = "4.2.0"
node.oozie.owner                    = node.apache_hadoop.yarn.user
node.oozie.group                    = node.apache_hadoop.hadoop.group
node.oozie.url                      = "#{node.download_url}/oozie-#{node.oozie.version}-distro.tar.gz"
node.oozie.systemd                  = "true"
node.oozie.dir                      = "/srv"
node.oozie.base_dir                 = "/srv/oozie-" + "#{node.oozie.version}"
node.oozie.home                     = "/srv/oozie"


