class profile::ssh_server {
  package {'openssh-server':
    ensure => present,
  }
  service { 'sshd':
    ensure => 'running',
    enable => 'true',
  }
  ssh_authorized_key { 'root@master.puppet.vm':
    ensure => present,
    user   => 'root',
    type   => 'ssh-rsa',
    key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCh250Bei0v8lOiS4Lfpfqe9zthGTfBOr5Gnr15E9zv+nZsQG5GG4WYV9YQ9tkasqP+EwIiX/CFrlrMeYmuYWwJYXyCjHyl68q7hEK49umducDL6XhDAJSfAuS4lQ8mRa16kmWB/m2CdyCUKfU+0ldNWmn9ivsHr9pb2xAQJcUAi2kGR4wyMqcZ48NQ7/n9ztxh+6NJnD2oPBBEdY+RdnXZ854zsINQ03BoR25OsXjWpNWB+C6XqjEIRdmtUFTJRXXjYdda0fpu+vn7w3W3aINzAIRArrr6qEX2Xi84gH1FfqgN5je3KT7bLHPxHUN+z3f0oEMvzi2E29rZ/L+s5jl1',
  }  
}
