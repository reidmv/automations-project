class policy::platform::baseline::linux::firewall (
  $purge = false,
) {

  Firewall {
    before  => Class['policy::platform::baseline::linux::firewall_post'],
    require => Class['policy::platform::baseline::linux::firewall_pre'],
  }

  class { ['::policy::platform::baseline::linux::firewall_pre', '::policy::platform::baseline::linux::firewall_post']: }

  resources { 'firewall':
    purge => $purge,
  }

  include firewall

}
