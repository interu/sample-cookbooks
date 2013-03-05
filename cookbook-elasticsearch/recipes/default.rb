
yum_package "elasticsearch" do
  action :install
end

conf_dir = "/etc/elasticsearch"


template "#{conf_dir}/logging.yml" do
  source "logging.yml.erb"
  mode 0755
end

template "#{conf_dir}/elasticsearch.yml" do
  source "elasticsearch.yml.erb"
  mode 0755
end

template "#{conf_dir}/elasticsearch.conf" do
  source "elasticsearch.conf.erb"
  mode 0755
end

service "elasticsearch" do
  supports :status => true, :restart => true
  action [ :enable, :start ]
end
