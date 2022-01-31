class policy::platform::compliance::hipaa {

  case $::osfamily {
    'windows': {
      include policy::platform::compliance::hipaa::windows
    }
    default: {
      include policy::platform::compliance::hipaa::linux
    }
  }
}
