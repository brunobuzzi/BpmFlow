test
testFormFieldValueAssignments

	BpmProcessDefinition getAllProcessDefinition do: [:eachProcDef | 
		eachProcDef formFieldInstances do: [:formDictionary | 
			formDictionary do: [:fieldRcCollection | 
				fieldRcCollection do: [:appFieldValue |  | formInstance assignment process valueHolder |
					formInstance := appFieldValue parentObject.
					assignment := formInstance assignment.
					process := assignment process.
					valueHolder := formInstance holderValueAt: appFieldValue name.
					self assert: (process definition == eachProcDef).
					self assert: (valueHolder currentValues identityIncludes: appFieldValue).
				]. 
			].
		]. 
	].