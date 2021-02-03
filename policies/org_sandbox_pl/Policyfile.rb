# Policyfile.rb - Describe how you want Chef Infra Client to build your system.
#
# For more information on the Policyfile feature, visit
# https://docs.chef.io/policyfile/

# A name that describes what the system you're building with Chef does.
name 'org_sandbox_pl'

# Where to find external cookbooks:
default_source :supermarket

# run_list: chef-client will run these recipes in the order specified.
run_list 'org_sandbox_pl::default'

# Specify a custom source for a single cookbook:
cookbook 'org_sandbox_pl', path: '.'
cookbook 'org_sandbox_cb', path: '../../cookbooks/org_sandbox_cb'
cookbook 'org_audit_cb', path: '../../cookbooks/org_audit_cb'
