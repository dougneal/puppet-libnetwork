# == Class libnetwork::install
#
# This class is called from libnetwork for install.
#
class libnetwork::install {

  package { $::libnetwork::package_name:
    ensure => present,
  }
}
