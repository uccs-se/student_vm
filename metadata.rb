name             'workstation'
version           '0.3.1'
maintainer       'Renlor'
maintainer_email 'jvandebr@uccs.edu'
description      'Configure a student vm with the software necessary for the UCCS Software Engineering course.'
issues_url        'https://github.com/uccs-se/workstation/issues'
source_url        'https://github.com/uccs-se/workstation'
license           'MIT'
provides          'workstation::default'
supports          'ubuntu' '>= 12.04'

depends 'chef-dk'
depends 'chef-solo'
depends 'git'
depends 'ntp'
depends 'ssh'
depends 'sshd'
depends 'chef_rvm'
depends 'rubymine'
depends 'xfce4'
depends 'xrdp'

long_description <<-EOH
= DESCRIPTION:

= REQUIREMENTS:

= ATTRIBUTES:

EOH