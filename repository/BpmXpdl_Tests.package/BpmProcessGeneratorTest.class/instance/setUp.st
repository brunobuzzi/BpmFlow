other
setUp

	super setUp.
 
	testRoot := BpmSystemRoot newWithBasicObjects.

	environment := self getDefaultEnvironment.
	application := self getDefaultApplication.
	
	environment registerApplication: self getDefaultApplication ifPresent: [] ifTaken: []