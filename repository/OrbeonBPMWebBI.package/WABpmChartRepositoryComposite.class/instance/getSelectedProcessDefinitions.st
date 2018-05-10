other
getSelectedProcessDefinitions
	| versions |

	versions := BpmProcessDefinition getAllProcessesNamed: self getProcessName in: self getApplicationName.

	^versions select: [:each | each version printString = self getVersion]