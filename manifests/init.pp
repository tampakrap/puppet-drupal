class drupal (
  $pkg_name        = $drupal::params::pkg_name,
  $ensure          = $drupal::params::ensure,
  $gentoo_use      = $drupal::params::gentoo_use,
  $gentoo_keywords = $drupal::params::gentoo_keywords,
) inherits drupal::params {

  portage::package { $pkg_name:
    ensure   => $ensure,
    use      => $gentoo_use,
    keywords => $gentoo_keywords,
  }

}
