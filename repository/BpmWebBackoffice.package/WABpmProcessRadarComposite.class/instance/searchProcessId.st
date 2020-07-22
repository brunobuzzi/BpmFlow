searching
searchProcessId
	| id contextApplications |

	selectedObject := nil.
	self hasProcessId ifFalse: [^self hasSelectedApplication ifTrue:[self searchByApplication] ifFalse:[searchCollectionResult := #()]].

	id := [Integer fromString: (searchValues at: 'id')] on: Error do: [:err | 0].

	contextApplications := OrderedCollection new.
	(self session user getBackofficeApplicationsIn: self session bpmEnvironment) do: [:eachApp | 
		eachApp processesDefinitionsDo:  [:procDef | contextApplications add: procDef].
	].

	searchCollectionResult := (self defaultProcessDefinitionClass getProcessInstanceWithId: id onApplications: contextApplications) 
										ifNil: [#()] 
										ifNotNil: [:object | OrderedCollection with: object].

	searchValues 
		removeKey: 'form-definition' ifAbsent: [];
		removeKey: 'form-field' ifAbsent: [];
		removeKey: 'application' ifAbsent: [].