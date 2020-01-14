setup
create_setUpMethod
	| stream |

	stream := String new writeStream.
	self create_EnvironmentAndApplicationOn: stream.
	self create_ProcessDefinitionOn: stream.
	self create_UsersOn: stream.
	self createGrant_UsersOn: stream.

	self compile: stream asMethodNamed: #setUp