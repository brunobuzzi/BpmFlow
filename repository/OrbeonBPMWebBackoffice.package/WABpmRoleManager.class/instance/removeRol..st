operations
removeRol: aBpmRole

	aBpmRole canDelete 
	ifFalse: [self closeAllInformationComponents.
				^(self getTableNamed: 'Roles' ifAbsent: [^self]) 
					information: ('Role can not be deleted !!!' translateFor: self session user)
					color: 'red'].

	rolesBatchList remove: aBpmRole.
	
	^aBpmRole removeFromCacheInAppName: aBpmRole getApplicationName