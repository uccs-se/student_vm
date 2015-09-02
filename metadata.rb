name             'workstation'
version           '0.3.0'
maintainer       'Renlor'
maintainer_email 'jvandebr@uccs.edu'
description      'Configure a student vm with the software necessary for the UCCS Software Engineering course.'
issues_url        'https://github.com/uccs-se/workstation/issues'
source_url        'https://github.com/uccs-se/workstation'
license           'MIT'
provides          'workstation::default'
supports          'ubuntu' '>= 12.04'

depends 'ntp'
depends 'openssh'
depends 'chef-solo'
depends 'chef-dk'

long_description <<-EOH
= DESCRIPTION:

= REQUIREMENTS:

= ATTRIBUTES:

EOH