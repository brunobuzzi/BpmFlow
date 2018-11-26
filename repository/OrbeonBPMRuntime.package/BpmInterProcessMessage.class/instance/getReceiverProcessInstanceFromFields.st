query
getReceiverProcessInstanceFromFields
	"The receiver detect target bpm processes <BpmProcessInstance> from <Dictionary> <receiverIdentificationFields>.
	The search is an AND for all fields in <receiverIdentificationFields>.
	This implementation support multi processes to be reached by the receiver. 
	Note: It is responsibility of the process designer to assure the correct orchestation between processes"
	| processes |

	processes := Set new.
	"check in all versions of the process definition"
	self getReceiverProcessesDefinitions do: [:procDefinition | | formName |
		receiverIdentificationFields keysAndValuesDo: [:identificationField :fieldValue | | fieldsValues matchingProcesses |
			"<identificationField> must include the type of the field for example: citizenId[n] or citizenName[s]"
			formName := (procDefinition getFormsNamesWithFieldNamed: identificationField) ifEmpty: [''] ifNotEmpty: [:collection | collection last].
			fieldsValues := procDefinition getFieldsNamed: identificationField in: formName withValue: fieldValue. "get the <AppFieldValue>"
			matchingProcesses := (fieldsValues collect: [:each | each parentObject]) reject: [:each | each hasFinalized]. "get the <BpmProcessInstance>" 
			processes isEmpty
			ifTrue: [processes addAll: matchingProcesses]
			ifFalse: [processes := processes intersection: matchingProcesses].
		].
	].
	processes ifNotEmpty: [receiverProcessDefinition := (processes at: 1) definition]. 
	^processes