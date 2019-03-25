test
testBpmEnviromentsAndApplicationsIdentity

	self defaultEnvironmentClass cache do: [:environment | 
		self assert: (environment applications allSatisfy: [:application| application bpmEnvironment == environment])  
	].