class drupal (
  $pkg_name        = $drupal::params::pkg_name,
  $ensure          = $drupal::params::ensure,
  $gentoo_use      = $drupal::params::gentoo_use,
  $gentoo_keywords = $drupal::params::gentoo_keywords,
  $gentoo_mask     = $drupal::params::gentoo_mask,
) inherits drupal::params {

  portage::package { $pkg_name:
    ensure   => $ensure,
    use      => $gentoo_use,
    keywords => $gentoo_keywords,
    mask_version => $gentoo_mask,
    target   => 'drupal',
  }

}
