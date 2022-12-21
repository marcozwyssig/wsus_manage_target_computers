# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include wsus_manage_target_computers
class wsus_manage_target_computers ($target_computers = $array) {
  file { 'C:\\ProgramData\\Atos\\':
    ensure => 'directory',
  }

  file { 'Create target computer json':
    ensure  => file,
    content => template('wsus_manage_target_computers/target_computers.json'),
    path    => "C:\\ProgramData\\Atos\\targetgroups.json",
  }

  exec { 'Create target computer Powershell':
    command   => template('wsus_manage_target_computers/Configure-Target-Computer-Groups.ps1'),
    provider  => powershell,
    logoutput => true,
    timeout   => 32400,
  }
}
