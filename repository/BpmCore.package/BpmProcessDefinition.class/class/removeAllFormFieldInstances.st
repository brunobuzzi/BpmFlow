cache
removeAllFormFieldInstances
	"Remove ALL instances of <AppFieldValue> from each <BpmProcessDefinition>."

	self cache do: [:eachDictionary | 
		eachDictionary do: [:processesCollection | 
			processesCollection do: [:processDefinition | 
				processDefinition initializeFormFieldInstances. "remove all form field instances"
			].
		].
	].