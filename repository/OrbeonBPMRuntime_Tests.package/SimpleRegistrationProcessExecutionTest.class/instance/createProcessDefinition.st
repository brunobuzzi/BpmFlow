other
createProcessDefinition
	| xpdlReader processGenerator |

	xpdlReader := XPDLProcessDefinitionTemplate xpdlReaderForSimpleRegistrationProcess.

	processGenerator := BpmProcessGenerator on: xpdlReader xpdlPackages.
	processGenerator mapProcess: 'Simple Registration' toApplication: (self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'st');
		generateAllProcess.

	processGenerator processes do: [:each | each addToCache].

	"Associate the anonymous form with the ProcessDefinition"
	BpmProcessDefinition registerAnonymousStartFor:(BpmProcessDefinition getAllProcessesNamed: 'Simple Registration' in: 'st') last.

	^processGenerator getProcessDefinitionNamed: 'Simple Registration' ifNone: [self assert: false].