# Class: baculaweb::install
#
# Installation of the baculaweb package from a repository
class baculaweb::install {
  package { $baculaweb::pkg_name :
    ensure  => 'latest'
  }
}
