class policy::platform::baseline (
  Boolean $orch_agent  = false,
  Array   $timeservers = ['0.pool.ntp.org','1.pool.ntp.org'],
  Boolean $enable_monitoring = false,
){

  # Global
  class { 'time':
    servers => $timeservers,
  }

  # add sensu client
  if $enable_monitoring {
    include policy::app::sensu::client
  }

  # OS Specific
  case $::kernel {
    'windows': {
      include policy::platform::baseline::windows
    }
    'Linux':   {
      include policy::platform::baseline::linux
    }
    default: {
      fail('Unsupported operating system!')
    }
  }

}
