class policy::platform::baseline::windows {

  include policy::platform::baseline::windows::bootstrap
  include policy::platform::baseline::windows::common
  include policy::platform::baseline::windows::motd
  include policy::platform::baseline::windows::firewall
  include policy::platform::baseline::windows::packages
  include policy::platform::baseline::users::windows

  #include policy::platform::baseline::windows::win_corp_baseline

}
