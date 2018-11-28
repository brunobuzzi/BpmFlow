test
testBpmEnviromentsAndApplicationsIdentity

	BpmEnvironment cache do: [:environment | 
		self assert: (environment applications allSatisfy: [:application| application bpmEnvironment == environment])  
	].