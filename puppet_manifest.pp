#puppet manifest

file {"rah_file":
	path	=>	'/tmp/rah2',
	ensure	=>	present,
	content	=>	"I am a file!!!",
}

notify { '/tem/rah2 has already been synced.':
	require => File['rah_file']
}

$notification_msg = '/tmp/rah2 will be synced.'
notify { '/tmp/rah2 will be synced.':
	message => $notification_msg,
	before	=> File['rah_file']
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