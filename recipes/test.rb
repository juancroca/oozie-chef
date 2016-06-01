examples = "#{node.oozie.home}/examples"

apache_hadoop_hdfs_directory "#{examples}" do 
  action :put_as_superuser
  owner node.oozie.user
  group node.oozie.group
  mode "1775"
  dest "/examples"
end
