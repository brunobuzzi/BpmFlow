sub components
showCurrentProcess

	^self showCurrentProcess: (self session user getCurrentAssignmentsIn: self session bpmEnvironment) asArray