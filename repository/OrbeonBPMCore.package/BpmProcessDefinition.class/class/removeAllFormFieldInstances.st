cache
removeAllFormFieldInstances
	"Remove ALL instances of <AppFieldValue> from each <BpmProcessInstance>."

	self cache do: [:eachDictionary | 
		eachDictionary do: [:procCollection | 
			procCollection do: [:eachProc | 
				eachProc formFieldInstances: Dictionary new. "remove all form field instances"
			].
		].
	].