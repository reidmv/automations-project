class policy::app::cloudshop::sqlserver::staging {
  class { '::staging':
      path  => 'C:\ProgramData\staging',
      owner => 'BUILTIN\Administrators',
      group => 'NT AUTHORITY\SYSTEM',
  }
}
