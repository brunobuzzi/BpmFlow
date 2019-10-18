tests
testRolesResponsibility3
	| process tasks isGranted |

	process := self getEmbeddedSubProcess.
	
	tasks := #('script-embedded').
	tasks do: [:each | 
		isGranted := (process getScriptNamed: each ifNone: [self assert: false]) isGrantedRoleNamed: 'administrator'.
		self assert: isGranted].