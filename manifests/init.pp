# Class: vagrant
#
# Description
#    This module is designed to configure a system so that 
#    vagrant can manage the system. This is necessary so that 
#    base installs do not overwrite the configurations necessary for vagrant.
#    Also, to be used with a puppet-veewee install.
#
# Parameters
#    None
#
# Actions:
#    Install the sudoer entry
#
# Requires:
#     Class[sudoers]

sudoers::entry { 'vagrant':
  ensure   => 'present',
  isgroup  => 'false',
  nopasswd => 'true',
  noexec   => 'false',
  commands => ['ALL']
}
