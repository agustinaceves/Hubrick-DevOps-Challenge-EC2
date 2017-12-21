#
# Cookbook:: Hubrick-DevOps-Challenge
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

package 'nginx' do
  action :install
end

service 'nginx' do
  supports status: true
  action [:enable, :start]
end

template '/var/www/html/index.nginx-debian.html' do
  source 'index.html.erb'
end
