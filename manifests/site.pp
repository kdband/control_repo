node default{
  file{'/root/README':
    ensure => file,
    content =>' THis is a README',
  }
}
