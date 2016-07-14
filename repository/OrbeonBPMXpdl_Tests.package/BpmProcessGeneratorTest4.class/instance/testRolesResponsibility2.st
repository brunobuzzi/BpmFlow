other
testRolesResponsibility2
	| process tasks subProc isGranted |

	process := self getEmbedded01Process.
	
	tasks := #('script-embedded-01').
	tasks do: [:each | 
		isGranted := (process getScriptNamed: each ifNone: [self assert: false]) isGrantedRoleNamed: 'administrator'.
		self assert: isGranted].

	subProc := process getSubProcessTaskNamed: 'embedded 02' ifNone: [self assert: false].
	isGranted := subProc isGrantedRoleNamed: 'administrator'.
	self assert: isGranted.