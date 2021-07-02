test
testAdminsEnvironmentExistance
	"Check the existance of 'admins' <BpmEnvironment>.
	This environment must exist always"

	[testRoot getAdminsEnvironment] on: NoEnvironmentException do: [:ex | self assert: false].