# == Class: contrail::analytics::service
#
# Manage the analytics service
#
class contrail::analytics::service {

  $analytic_services = ['contrail-analytics-api', 'contrail-collector', 'contrail-query-engine', 'contrail-snmp-collector', 'contrail-topology']

  service {"$analytic_services" :
    ensure => running,
    enable => true,
  }

}
