all conditions type
xpdlReaderForAllConditionsType

	^(self getXpdlReaderClass forProcessNamed: 'all-type-conditions' withString: self processDefinition_all_conditions_type)
			connectProcesses;
			yourself