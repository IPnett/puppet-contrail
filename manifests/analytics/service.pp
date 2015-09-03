# == Class: contrail::analytics::service
#
# Manage the analytics service
#
class contrail::analytics::service {

  $analytics_services = ['contrail-analytics-api', 'contrail-collector', 'contrail-query-engine', 'contrail-snmp-collector', 'contrail-topology']

  service { $analytics_services:
    ensure => running,
    enable => true,
  }

}
