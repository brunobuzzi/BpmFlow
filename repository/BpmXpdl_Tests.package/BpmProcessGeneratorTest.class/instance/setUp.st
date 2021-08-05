other
setUp

	super setUp.
 
	testRoot := BpmSystemRoot newWithBasicObjects.

	self getDefaultEnvironment registerApplication: self getDefaultApplication ifPresent: [] ifTaken: [].