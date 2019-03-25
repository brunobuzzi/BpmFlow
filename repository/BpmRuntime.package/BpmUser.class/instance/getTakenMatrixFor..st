assignment
getTakenMatrixFor: aBpmTaskAssignment

	^self defaultTakenTasksMatrixClass 
				getMatrixForApplicationNamed: aBpmTaskAssignment applicationName 
				ifAbsent: [NoMatrixForApplicationException signal: 'No Matrix for application named [', aBpmTaskAssignment applicationName, ']']