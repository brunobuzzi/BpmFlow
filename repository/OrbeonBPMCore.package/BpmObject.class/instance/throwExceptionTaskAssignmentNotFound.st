exceptions
throwExceptionTaskAssignmentNotFound

	^NoSuchTaskAssignmentException signal: 'The BpmTaskAssignment was not found in the tasks collection'