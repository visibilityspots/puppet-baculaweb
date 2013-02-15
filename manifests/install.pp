# Class: baculaweb::install
#
# Installation of the baculaweb package
class baculaweb::install {
  package { $baculaweb::pkg_name :
    ensure  => 'latest'
  }
}
