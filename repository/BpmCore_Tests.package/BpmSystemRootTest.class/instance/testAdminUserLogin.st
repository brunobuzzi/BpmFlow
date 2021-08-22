tests
testAdminUserLogin
	| loginMode |

	loginMode := testRoot loginModeFor: 'orbeon-processes-web'.

	self assert: (loginMode validateUser: testRoot adminUserName password: testRoot adminPassword on: testRoot)