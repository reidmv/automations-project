class policy::platform::baseline::windows::common {

  reboot { 'dsc_reboot':
    when    => pending,
    timeout => 15,
  }

}
