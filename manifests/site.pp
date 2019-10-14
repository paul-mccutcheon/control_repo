node default {
}
node 'master.puppet.vm' {
  include role::master_server
  file { '/root/README':
    ensure => file,
    content => "Welcome to ${fqdn}\n",
   }
   file { '/etc/hosts':
    ensure => file,
    content =>  "172.18.0.3 web web.puppet.vm\n172.18.0.2 db db.puppet.vm\n",              
   }
}

node /^web/ {
  include role::app_server
}

node /^db/ {
  include role::db_server
}
