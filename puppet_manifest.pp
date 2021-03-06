/* puppet manifest example */

	/* Variables */
	$etc_hosts_content = 
	"##
	# Host Database
	#
	# localhost is used to configure the loopback interface
	# when the system is booting.  Do not change this entry.
	##
	127.0.0.1       localhost
	255.255.255.255 broadcasthost
	::1             localhost
	fe80::1%lo0     localhost
	"


	file {"etc_hosts":
		path	=>	'/Users/vmp/dev/puppet/workspace/puppet/hosts',
		ensure	=>	file,
		content	=> $etc_hosts_content
	}

	notify { '/tem/rah2 has already been synced.':
		require => File['etc_hosts']
	}

	$notification_msg = '/tmp/rah2 will be synced.'
	notify { '/tmp/rah2 will be synced.':
		message => $notification_msg,
		before	=> File['etc_hosts']
	}
}


file {"text_file" :
	path	=>	'/tmp/text_file',
	ensure	=>	file,
	content	=>	"I am a file!!!"
}

file {'/tmp/test_directory':
	ensure => directory,
	mode   => 0644,
}

file {'/tmp/test3':
	ensure => link,
	target => '/tmp/dev/puppet/temp/test1',
}

notify {"I'm notifying you.":}
notify {"So am I!":}