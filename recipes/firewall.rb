#
# Cookbook Name:: awesome_customers_rhel
# Recipe:: firewall
#
# Copyright (c) 2016 The Authors, All Rights Reserved.
include_recipe 'firewall::default'

ports = node.default['awesome_customers_rhel']['open_ports']
firewall_rule "open ports #{ports}" do
  port ports
end
