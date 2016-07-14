other
createProcessDefinition
	| xpdlReader processGenerator |

	xpdlReader := XPDLProcessDefinitionTemplate xpdlReaderForSimpleRegistrationProcess.

	processGenerator := BpmProcessGenerator on: xpdlReader xpdlPackages.
	processGenerator mapProcess: 'Simple Registration' toApplication: (self getApplicationManagerClass getAnyApplicationNamed: 'st');
		generateAllProcess.

	processGenerator processes do: [:each | each addToCache].

	"Associate the anonymous form with the ProcessDefinition"
	BpmProcessDefinition 
		registerAnonymousMappingForm: 'simple-registration' 
		in: 'st' 
		for: (BpmProcessDefinition getAllProcessesNamed: 'Simple Registration' in: 'st') last.

	^processGenerator getProcessDefinitionNamed: 'Simple Registration' ifNone: [self assert: false].