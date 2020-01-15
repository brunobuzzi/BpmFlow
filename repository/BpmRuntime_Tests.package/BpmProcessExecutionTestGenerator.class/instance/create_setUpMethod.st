cg setUp
create_setUpMethod
	| stream |

	stream := String new writeStream.
	stream nextPutAll: 'setUp'; cr;tab;
			nextPutAll: '| environment |';
			cr;cr;tab;
			nextPutAll: 'super setUp.';cr.

	self create_EnvironmentAndApplicationOn: stream.
	self create_ProcessDefinitionOn: stream.
	self create_UsersOn: stream.
	self createGrant_UsersOn: stream.

	^self compile: stream asMethodNamed: #setUp