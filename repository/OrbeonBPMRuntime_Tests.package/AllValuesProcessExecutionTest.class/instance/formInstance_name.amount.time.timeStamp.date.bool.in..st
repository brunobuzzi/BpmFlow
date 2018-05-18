test
formInstance_name: nameString amount: amountString time: timeString timeStamp: timeStampString date: dateString bool: boolString in: aBpmProcessInstance
	| arguments |

	arguments := OrderedCollection new
		add: nameString;
		add: amountString;
		add: timeString;
		add: timeStampString;
		add: dateString;
		add: boolString;
		asArray.

	^self createFormInstance: #form_allTypes_name:amount:time:timeStamp:date:bool:
			withValues: arguments 
			definitionNamed: 'all-field-types' 
			app: 'ue' 
			definitionMethod: #formDefinition_all_types
			in: aBpmProcessInstance