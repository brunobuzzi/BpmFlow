other
formInstance_citizen_appliance_oop: taskOop assignOop: assignmentOop

	^self formCreatorClass 
				createFormInstance: #form_citizen_appliance_oop:assignment: 
				withValues: (Array with: taskOop with: assignmentOop)
				definitionNamed: 'citizen-appliance' 
				app: 'ue-test' 
				definitionMethod: #formDefinition_citizen_appliance_2
				in: procInstance