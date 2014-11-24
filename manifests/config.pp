# Class: baculaweb::config
#
# Class which configures the baculaweb agent service
class baculaweb::config {
  file { $baculaweb::rootdir :
    ensure  => 'directory',
    owner   => $baculaweb::user,
    group   => $baculaweb::group,
    mode    => '0555',
    require => Package[$baculaweb::webserver],
  }

  file { "${baculaweb::rootdir}/application/view/cache":
    mode    => '0755',
  }

  file { "${baculaweb::rootdir}/application/config/config.php":
    path    => "${baculaweb::rootdir}/application/config/config.php",
    content => template('baculaweb/config.php.erb'),
    require => Package[$baculaweb::pkg_name],
    notify  => Service[$baculaweb::webserver];
  }
}
