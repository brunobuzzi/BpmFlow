tests
testRolesResponsibility2
	| process tasks isGranted |

	process := self getReusableSubProcess.
	
	tasks := #('script-reusable').
	tasks do: [:each | 
		isGranted := (process getScriptNamed: each ifNone: [self assert: false]) isGrantedRoleNamed: 'administrator'.
		self assert: isGranted].