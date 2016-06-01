use_inline_resources


notifying_action :create do

gd = "#{node.oozie.home}/.oozie_shared_libs_uploaded"
bash "create_oozie_shared_libs" do
    user node.oozie.user
    cwd node.oozie.home
    code <<-EOF
    ./bin/oozie-setup.sh sharelib create -fs hdfs://#{@new_resource.nn}
    touch #{gd}
EOF
gd
  not_if { ::File.exists?( gd ) }
end

end
