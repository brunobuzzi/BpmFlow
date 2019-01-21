other
testAdminsEnvironmentExistance

	[self defaultEnvironmentClass getAdminsEnvironment] on: NoEnvironmentException do: [:ex | self assert: false].