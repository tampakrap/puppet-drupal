class drupal::params {

  $ensure          = 'installed'
  $gentoo_use      = ''
  $gentoo_keywords = ''

  case $operatingsystem {
    'gentoo': {
      $pkg_name = 'www-apps/drupal'
    }
    default: { fail("Sorry, $operatingsystem is not supported") }
  }

}
