# == Class libnetwork::params
#
# This class is meant to be called from libnetwork.
# It sets variables according to platform.
#
class libnetwork::params {
  case $::osfamily {
    'Debian': {
      $package_name = 'libnetwork'
      $service_name = 'libnetwork'
    }
    'RedHat', 'Amazon': {
      $package_name = 'libnetwork'
      $service_name = 'libnetwork'
    }
    default: {
      fail("${::operatingsystem} not supported")
    }
  }
}
