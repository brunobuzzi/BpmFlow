other
setUp

	super setUp.

	testRoot := BpmSystemRoot newWithBasicObjects.

	testRoot registerEnvironment: self getDefaultEnvironment ifPresent: [].