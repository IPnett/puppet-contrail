# == Class: contrail::control::service
#
# Manage the control service
#
class contrail::control::service {

  $control_service = [ 'contrail-control', 'contrail-dns', 'contrail-named' ]

  service { $control_service:
    ensure => running,
    enable => true,
  }

}
