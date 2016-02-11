server 'ec2-54-191-106-113.us-west-2.compute.amazonaws.com',
				user: 'ubuntu', roles: %w{web app db}

set :ssh_options, {
	keys: '/Users/Rob/Desktop/fumblr.pem'
}