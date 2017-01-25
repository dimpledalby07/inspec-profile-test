#
# Cookbook:: lib_template_test
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

install_dir = '/opt/template_test'

directory install_dir do
  mode '0755'
  action :create
  recursive true
end

template "#{install_dir}/lib.txt" do
  source 'lib.txt.erb'
  variables({
    val_1: node['lib_template_test']['val_1'],
    val_2: node['lib_template_test']['val_2'],
    val_3: node['lib_template_test']['val_3']
  })
end
