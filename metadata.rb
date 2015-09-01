name             'student_vm'
version           '0.2.0'
maintainer       'Renlor'
maintainer_email 'jvandebr@uccs.edu'
description      'Configure a student vm with the software necessary for the UCCS Software Engineering course.'
issues_url        'https://github.com/uccs-se/student_vm/issues'
source_url        'https://github.com/uccs-se/student_vm'
license           'MIT'
provides          'student_vm::default'
supports          'ubuntu' '>= 12.04'

depends 'ntp', '~> 1.8.6'

long_description <<-EOH
= DESCRIPTION:

= REQUIREMENTS:

= ATTRIBUTES:

EOH