name 'org_sandbox_pl'
maintainer 'Esten Rye'
maintainer_email 'esten.rye+chef_org_sandbox_pl@ryezone.com'
license 'All Rights Reserved'
description 'Installs/Configures org_sandbox_pl'
version '0.1.0'
chef_version '>= 15.0'

# The `issues_url` points to the location where issues for this cookbook are
# tracked.  A `View Issues` link will be displayed on this cookbook's page when
# uploaded to a Supermarket.
#
# issues_url 'https://github.com/<insert_org_here>/org_sandbox_pl/issues'

# The `source_url` points to the development repository for this cookbook.  A
# `View Source` link will be displayed on this cookbook's page when uploaded to
# a Supermarket.
#
# source_url 'https://github.com/<insert_org_here>/org_sandbox_pl'

depends 'org_sandbox_cb'
depends 'org_audit_cb'

supports 'ubuntu'
supports 'redhat'
supports 'windows'
