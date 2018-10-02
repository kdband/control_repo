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
    key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCimMPnbVQdWuJizPf3LRja6eEw8RUwXiGlYWHmdxv8C47G5flmHqVw05ZqPjjeoGdA0jg4zko1l6H275ww6uZcV8TKvfRtwLx5+9uh1u9odNfyf0TE8xWCRTbsp/1SQpCX6WNrj7xtAffZmS8y1P1xgRk5xNATh5Pr4e3iPTn+wCGtDbQSbDk0qPshd5nCXIcZ3rrjgd6CL4+F3xbb8tBlRoYNa5r85NPx4WkwqS4Y2Zb2p9Bj9RPxX5dsXpLEU34CGF9dH16a0Qpck0ikW+9qAWjlQVZPolOV1WYEpeda/dW+wNrnY3YfzA+M563U8vunlCRkqSahR/ngjF/lbgpF',
  }  
}
