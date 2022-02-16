class policy::baseline (
  Boolean $enable_monitoring = false,
) {

  # Global
  include policy::baseline::time

  # add sensu client
  if $enable_monitoring {
    include policy::app::sensu::client
  }

  # OS Specific
  case getvar('facts.kernel') {
    'windows': {
      include policy::baseline::windows
    }
    'Linux':   {
      include policy::baseline::linux
    }
    default: {
      fail('Unsupported operating system!')
    }
  }

}
