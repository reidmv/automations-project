class policy::platform::baseline (
  Boolean $enable_monitoring = false,
) {

  # Global
  include policy::platform::baseline::time

  # add sensu client
  if $enable_monitoring {
    include policy::app::sensu::client
  }

  # OS Specific
  case getvar('facts.kernel') {
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
