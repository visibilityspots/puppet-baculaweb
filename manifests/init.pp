# Class: baculaweb
#
# Initialization class for the baculaweb agent
class baculaweb (
  $pkg_name         = $baculaweb::params::pkg_name,

  $rootdir          = $baculaweb::params::rootdir,
  $user             = $baculaweb::params::user,
  $group            = $baculaweb::params::group,
  $webserver        = $baculaweb::params::webserver,

  $inactive_clients = $baculaweb::params::inactive_clients,
  $empty_pools      = $baculaweb::params::empty_pools,
  $language         = $baculaweb::params::language,

  $dbhost           = $baculaweb::params::dbhost,
  $dbuser           = $baculaweb::params::dbuser,
  $dbpass           = $baculaweb::params::dbpass,
  $dbname           = $baculaweb::params::dbname,
  $dbtype           = $baculaweb::params::dbtype,
  $dbport           = $baculaweb::params::dbport,
) inherits baculaweb::params {

  include ::baculaweb::install
  include ::baculaweb::config

  motd::register{'bacula-web': }

  Class['::baculaweb::install'] ->
  Class['::baculaweb::config']
}
