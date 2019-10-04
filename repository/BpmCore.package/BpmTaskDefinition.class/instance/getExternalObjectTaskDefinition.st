extended attributes
getExternalObjectTaskDefinition

	reuseExternalObjectOfTaskNamed ifNil: [^nil].
	reuseExternalObjectOfTaskNamed ifEmpty: [^nil].

	^processDefinition getTaskNamed: reuseExternalObjectOfTaskNamed ifNone: [NoSuchActivitytException signal: 'Task Named [', reuseExternalObjectOfTaskNamed , '] for reuse not found']