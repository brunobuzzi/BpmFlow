test
testBpmEnviromentsAndApplicationsIdentity

	self defaultEnvironmentClass cache do: [:environment | 
		self assert: (environment applicationsAllSatisfy: [:application| application bpmEnvironment == environment])  
	].