class policy::platform::baseline::linux {

  include policy::platform::baseline::linux::packages
  include policy::platform::baseline::linux::vim
  include policy::platform::baseline::linux::motd
  include policy::platform::baseline::users::linux
  include policy::platform::baseline::linux::ssh
  include policy::platform::baseline::linux::firewall

}
