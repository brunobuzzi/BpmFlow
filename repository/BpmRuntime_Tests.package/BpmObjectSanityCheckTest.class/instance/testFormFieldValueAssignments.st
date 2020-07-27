test
testFormFieldValueAssignments
	"<fieldRcCollection> - collection of the <BpmProcessDefinition>"

	self defaultEnvironmentClass cache do: [:environment |
		environment getAllProcessDefinitions do: [:eachProcDef | 
			eachProcDef formFieldInstancesDo: [:formDictionary | 
				formDictionary do: [:fieldRcCollection | 
					fieldRcCollection do: [:appFieldValue |  | formInstance assignment process valueHolder |
						formInstance := appFieldValue parentObject.
						assignment := formInstance assignment.
						process := assignment process.
						valueHolder := formInstance holderValueAt: appFieldValue name.

						"check identity of <BpmProcessDefinition> in cache with <BpmProcessDefinition> of each <AppFieldValue> via parentObject.assignment.process.definition"
						self assert: (process definition == eachProcDef).
						"check identity of each <AppFieldValue> contained in each <BpmProcessInstance> with <AppFieldValue> in general collection of <BpmProcessDefinition>"
						self assert: (valueHolder currentValues identityIncludes: appFieldValue).
						self assert: (valueHolder currentValues anySatisfy: [:each | each == appFieldValue]).
					]. 
				].
			]. 
		].
	].