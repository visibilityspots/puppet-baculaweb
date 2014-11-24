# Class baculaweb::params
#
# This class contains every parameter which will be used in this puppet module
# for setting up the baculaweb agent on a server
class baculaweb::params {
  $pkg_name         = 'bacula-web'
  $rootdir          = '/var/www/bacula-web'
  $user             = 'apache'
  $group            = 'apache'
  $webserver        = 'httpd'

  $inactive_clients = true
  $empty_pools      = false
  $language         = 'en_US'

  $dbhost           = 'localhost'
  $dbuser           = 'bacula'
  $dbpass           =  undef
  $dbname           = 'bacula'
  $dbtype           = 'mysql'
  $dbport           = '3306'
}
