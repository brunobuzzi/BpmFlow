other
setUp

	super setUp.

	testRoot := BpmSystemRoot newWithOrbeon.

	self getDefaultEnvironment registerApplication: self getDefaultApplication ifPresent: [] ifTaken: [].