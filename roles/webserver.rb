name 'webserver'
description 'The base role for systems that serve HTTP traffic'
recipes "apache2", "apache2::mod_ssl"
default_attributes "apache2" => { "listen_ports" => [ "80", "443" ] }
override_attributes "apache2" => { "max_children" => "50" }
