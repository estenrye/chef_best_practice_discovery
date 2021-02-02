#
# Cookbook:: org_sandbox_cb
# Recipe:: default
#
# Copyright:: 2021, Esten Rye, All Rights Reserved.

temp_directory =  if platform_family?('windows')
                    'C:/Temp'
                  else
                    '/tmp'
                  end

directory temp_directory do
  action :create
end

file "#{temp_directory}/chef_welcome.txt" do
  content 'Welcome aboard, have fun using Chef!'
end
