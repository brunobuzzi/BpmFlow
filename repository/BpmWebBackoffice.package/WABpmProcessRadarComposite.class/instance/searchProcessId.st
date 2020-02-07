searching
searchProcessId
	| id contextApplications |

	selectedObject := nil.
	self hasProcessId ifFalse: [^self hasSelectedApplication ifTrue:[self searchByApplication] ifFalse:[searchCollectionResult := #()]].

	id := [Integer fromString: (searchValues at: 'id')] on: Error do: [:err | 0].

	contextApplications := 
		(self session user getBackofficeApplicationsIn: self session bpmEnvironment)
			collect: [:eachApp | eachApp processesDefinitions] "answer <aDictionary> where the key is the process name and the value is a collection of <BpmPricessDefinition>s".

	searchCollectionResult := (self defaultProcessDefinitionClass getProcessInstanceWithId: id onApplications: contextApplications) 
										ifNil: [#()] 
										ifNotNil: [:object | OrderedCollection with: object].

	searchValues 
		removeKey: 'form-definition' ifAbsent: [];
		removeKey: 'form-field' ifAbsent: [];
		removeKey: 'application' ifAbsent: [].