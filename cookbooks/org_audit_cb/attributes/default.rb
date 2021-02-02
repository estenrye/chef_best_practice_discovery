
default['org_audit_cb']['base_log_directory'] = if platform_family?('windows')
                                                  'C:/log'
                                                else
                                                  '/var/log'
                                                end

default['audit'] = {
  attributes: {
    environment: node.chef_environment,
  },
  interval: {
    enabled: false,
    time: 1440, # once a day, the default value
  },
  json_file: {
    location: "#{node['org_audit_cb']['base_log_directory']}/org_audit_cb/audit/inspec-#{Time.new.strftime('%Y-%m-%d_%H-%M-%S')}.json",
  },
  profiles: {},
  reporter: [
    'json-file',
  ],
}

default['audit']['profiles']['os_baseline'] = if platform_family?('windows')
                                                {
                                                  git: 'https://github.com/dev-sec/windows-baseline.git',
                                                }
                                              else
                                                {
                                                  git: 'https://github.com/dev-sec/cis-dil-benchmark.git',
                                                }
                                              end
