#puppet manifest

file {"rah_file":
	path	=>	'/Users/vmp/dev/puppet/temp/rah2',
	ensure	=>	present,
	content	=>	"I am a file!!!",
}


file {"text_file" :
	path	=>	'/Users/vmp/dev/puppet/temp/text_file',
	ensure	=>	file,
	content	=>	"I am a file!!!"
}

file {'/Users/vmp/dev/puppet/temp/test_directory':
	ensure => directory,
	mode   => 0644,
}

file {'/Users/vmp/dev/puppet/temp/test3':
	ensure => link,
	target => '/Users/vmp/dev/puppet/temp/test1',
}

notify {"I'm notifying you.":}
notify {"So am I!":}