# == Class: libnetwork
#
# Full description of class libnetwork here.
#
# === Parameters
#
# [*sample_parameter*]
#   Explanation of what this parameter affects and what it defaults to.
#
class libnetwork (
  $package_name = $::libnetwork::params::package_name,
  $service_name = $::libnetwork::params::service_name,
) inherits ::libnetwork::params {

  # validate parameters here

  anchor { '::libnetwork::begin': } ->
  class { '::libnetwork::install': } ->
  class { '::libnetwork::config': }
  class { '::libnetwork::service': } ->
  anchor { '::libnetwork::end': }

  Anchor['::libnetwork::begin']  ~> Class['::libnetwork::service']
  Class['::libnetwork::install'] ~> Class['::libnetwork::service']
  Class['::libnetwork::config']  ~> Class['::libnetwork::service']
}
