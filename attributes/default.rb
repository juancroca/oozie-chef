include_attribute "kagent"
include_attribute "apache_hadoop"
include_attribute "hops"
include_attribute "hadoop_spark"
include_attribute "hopsworks"


default.oozie.version                  = "4.2.0"
default.oozie.user                     = node.apache_hadoop.yarn.user
default.oozie.group                    = node.apache_hadoop.group
default.oozie.url                      = "#{node.download_url}/oozie-#{node.oozie.version}-distro.tar.gz"
default.oozie.systemd                  = "true"
default.oozie.dir                      = "/srv"
default.oozie.base_dir                 = "/srv/oozie-" + "#{node.oozie.version}"
default.oozie.home                     = "/srv/oozie"


default.oozie.email.smtp.host          = node.hopsworks.smtp
default.oozie.email.smtp.username      = ""
default.oozie.email.smtp.port          = 587
default.oozie.email.smtp.password      = ""
# email address of sender
default.oozie.email.from.address       = ""
