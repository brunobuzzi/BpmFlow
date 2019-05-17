other
createMessageBody
	| stream |

	stream := WriteStream on: String new.

	stream nextPutAll: (
		'Application: ', application applicationName, '##', 
		'Form Name: ', formName, '##', 
		'Creation Date: ', self createdTime printString, '##').

	stream nextPutAll: 'Affected Processes: ##'. 
	affectedProcesses do: [:procDef | stream nextPutAll: procDef processName, ' v', procDef version printString, '##'].

	body := stream contents.