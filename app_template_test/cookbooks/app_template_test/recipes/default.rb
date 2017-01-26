#
# Cookbook:: app_template_test
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

include_recipe 'lib_template_test'

install_dir = '/opt/template_test'

directory install_dir do
  mode '0755'
  action :create
  recursive true
end

template "#{install_dir}/app.txt" do
  source 'app.txt.erb'
  variables({
    val_1: node['app_template_test']['val_1'],
    val_2: node['app_template_test']['val_2'],
    val_3: node['app_template_test']['val_3']
  })
end
