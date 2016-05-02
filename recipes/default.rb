#
# Cookbook Name:: opsworks_env_variables
# Recipe:: default
#
# Copyright (C) 2015 Mike Taylor
#
# All rights reserved - Do Not Redistribute
#

node[:deploy].each do |application, deploy|
  puts "DEPLOY #{deploy}"
  puts "APPLICATION #{application}"
  template "#{deploy[:deploy_to]}/current/config/application.yml" do
    mode '0644'
    owner deploy[:user]
    group deploy[:group]
    source "application.yml"
    variables(
      :deploy => deploy,
      :environment_variables => OpsWorks::Escape.escape_double_quotes(deploy[:environment_variables])
    )
  end
end
