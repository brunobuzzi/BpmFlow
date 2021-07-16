other
setUp

	super setUp.
 
	testRoot := BpmSystemRoot newWithBasicObjects.

	self getDefaultEnvironment registerApplication: self getDefaultApplication.