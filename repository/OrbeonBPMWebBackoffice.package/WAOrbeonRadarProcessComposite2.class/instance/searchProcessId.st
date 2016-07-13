searching
searchProcessId
	| id contextApplications |

	selectedObject := nil.
	self hasProcessId ifFalse: [^self hasSelectedApplication ifTrue:[self searchByApplication] ifFalse:[searchCollectionResult := #()]].

	id := [Integer fromString: (searchValues at: 'id')] on: Error do: [:err | 0].

	contextApplications := 
		(self session user getBackofficeApplications 
			collect: [:each | 
				BpmProcessDefinition cacheAt: each applicationName ifAbsent: [nil]]) 
		select: [:each | each notNil].

	searchCollectionResult := (BpmProcessDefinition getProcessInstanceWithId: id onApplications: contextApplications) 
										ifNil: [#()] 
										ifNotNil: [:object | OrderedCollection with: object].

	searchValues 
		removeKey: 'form-definition' ifAbsent: [];
		removeKey: 'form-field' ifAbsent: [];
		removeKey: 'application' ifAbsent: [].