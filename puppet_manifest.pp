#puppet manifest

file {"rah_file":
	path	=>	'/tmp/rah2',
	ensure	=>	present,
	content	=>	"I am a file!!!",
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