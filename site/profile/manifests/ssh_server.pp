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
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDkfZcJ3b7CKh699ZqVShRP5iZXfEDIepjg79atXtGwD9crTcaxAoOwSexgYLUM13tnExDKYVWWryIUWcEWKOess6gw2mJxeB5xLTxPRoH0UrmIcvCADAWR1Y1btxTvCx8L2nCe8uju/43ppqluueeLos6Hl5ySq4lktSfZp2ugWxXPEgtJjrfWTZurRYCy0TJw92JoTBDrxhQoXGzcKuQv+9DoC4NS8A/1jgNRoY2eVMLony9ZG9YaQKGDsSCgLDf7JWiD8kyT97bPO6kaFVBC2hHPLPqND6ASDdtIy2Yxi9B9kUSSV3z61Zj+qywhBHpJqnE3NPARj01b6Dpvk1k1',
	}  
}
