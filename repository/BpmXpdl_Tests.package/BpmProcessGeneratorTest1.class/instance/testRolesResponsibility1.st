other
testRolesResponsibility1
	| process tasks gateways subProcessTasks |

	process := self getTestCaseProcess.
	
	tasks := #('analyze-issue-report').
	tasks do: [:each | | isGranted |
		isGranted := (process getTaskNamed: each ifNone: [self assert: false]) isGrantedRoleNamed: 'test-expert'.
		self assert: isGranted].

	tasks := #('test-case').
	tasks do: [:each | | isGranted |
		isGranted := (process getTaskNamed: each ifNone: [self assert: false]) isGrantedRoleNamed: 'organizer'.
		self assert: isGranted.
		isGranted := (process getTaskNamed: each ifNone: [self assert: false]) isGrantedRoleNamed: 'automaticProcess'.
		self assert: isGranted].

	gateways := #('accept-issue').
	gateways do: [:each | | isGranted |
		isGranted := (process getGatewayNamed: each ifNone: [self assert: false]) isGrantedRoleNamed: 'test-expert'.
		self assert: isGranted].

	tasks := #('execute-test' 'test-ok').
	tasks do: [:each | | isGranted |
		isGranted := (process getTaskNamed: each ifNone: [self assert: false]) isGrantedRoleNamed: 'tester'.
		self assert: isGranted].

	gateways := #('is-issue').
	gateways do: [:each | | isGranted |
		isGranted := (process getGatewayNamed: each ifNone: [self assert: false]) isGrantedRoleNamed: 'tester'.
		self assert: isGranted].

	subProcessTasks := #('fix-issue').
	subProcessTasks do: [:each | | isGranted |
		isGranted := (process getSubProcessTaskNamed: each ifNone: [self assert: false]) isGrantedRoleNamed: 'developer'.
		self assert: isGranted].