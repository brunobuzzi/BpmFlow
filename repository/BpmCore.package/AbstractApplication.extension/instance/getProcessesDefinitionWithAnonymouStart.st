*bpmcore
getProcessesDefinitionWithAnonymouStart
	| processes |

	processes := OrderedCollection new.

	processesDefinitions do: [:collection | (collection notEmpty and: [collection last isAnonymousStartEnabled]) ifTrue: [processes add: collection last]].

	^processes