test
testBpmEnviromentsAndApplicationsIdentity

	testRoot environmentsDo: [:environment | 
		self assert: (environment applicationsAllSatisfy: [:application| application bpmEnvironment == environment])  
	].