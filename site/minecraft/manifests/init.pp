class minecraft (
  $url = 'https://launcher.mojang.com/v1/objects/fe123682e9cb30031eae351764f653500b7396c9/server.jar',
  $install_dir = '/opt/minecraft'
){
  file { $install_dir:
    ensure => directory,
  }
  file { "${install_dir}/minecraft_server.jar":
    ensure => file,
    source => $url,
  }

  package {'java':
    ensure => present,
  }
  file {"${install_dir}/eula.txt":
    ensure => file,
    content => 'eula=true'
  }
  file {'/etc/systemd/system/minecraft.service':
    ensure => file,
    content => epp('minecraft/minecraft.service.epp', {
      install_dir => $install_dir,
    }),
  }
  service { 'minecraft':
    ensure => running,
    enable => true,
  }
}
