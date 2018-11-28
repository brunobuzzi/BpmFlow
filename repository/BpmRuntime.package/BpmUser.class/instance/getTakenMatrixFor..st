assignment
getTakenMatrixFor: aBpmTaskAssignment

	^self getTakenTasksMatrixClass 
				getMatrixForApplicationNamed: aBpmTaskAssignment applicationName 
				ifAbsent: [NoMatrixForApplicationException signal: 'No Matrix for application named [', aBpmTaskAssignment applicationName, ']']