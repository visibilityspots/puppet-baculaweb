# puppet-baculaweb. [![Build Status](https://travis-ci.org/visibilityspots/puppet-baculaweb.svg?branch=master)](https://travis-ci.org/visibilityspots/puppet-baculaweb)

Deploying a bacula-web interface from bacula-web.org.

Supported CentOS 6 x86

I packaged the bacula-web software in an rpm package which is available on http://repository.visibilityspots.com, you need a webserver and a virtual host which points to the /var/www/bacula-web/ directory.

You can use for example https://github.com/vStone/puppet-apache to set configure an apache webserver.

## example for node.pp manifest:

```puppet
node 'HOSTNAME' {
  yumrepo { 'Visibilityspots':
    baseurl  => 'http://repository.visibilityspots.com',
    descr    => 'Visibilityspots repository',
    enabled  => 1,
    gpgcheck => 0
  }
  class {
    'bacula-web':
      dbpass   => 'THE PASSWORD OF YOUR BACULA MYSQL USER';
  }
}
```

## default params

those parameters will be used according to the params class but you can override them in your nodes manifest:

```puppet
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
```

Feel free to report issue's or comments.
