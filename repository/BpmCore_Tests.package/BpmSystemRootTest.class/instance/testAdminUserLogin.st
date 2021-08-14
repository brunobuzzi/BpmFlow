tests
testAdminUserLogin
	| loginMode |

	loginMode := GemStoneServerConfiguration default loginModeFor: 'orbeon-processes-web'.

	self assert: (loginMode validateUser: testRoot adminUserName password: testRoot adminPassword on: testRoot)