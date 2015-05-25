# == Class libnetwork::service
#
# This class is meant to be called from libnetwork.
# It ensure the service is running.
#
class libnetwork::service {

  service { $::libnetwork::service_name:
    ensure     => running,
    enable     => true,
    hasstatus  => true,
    hasrestart => true,
  }
}
