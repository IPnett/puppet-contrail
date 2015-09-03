# == Class: contrail::config::service
#
# Manage the config service
#
class contrail::config::service {

  $config_service = [ 'contrail-api', 'contrail-discovery', 'contrail-schema', 'contrail-svc-monitor', 'contrail-ifmap-server' ]

  service { $config_service:
    ensure => running,
    enable => true,
  }

}

