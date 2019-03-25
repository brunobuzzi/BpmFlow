other
getSelectedProcessDefinitions
	| versions |

	versions := self defaultProcessDefinitionClass getAllProcessesNamed: self getProcessName in: self getApplicationName.

	^versions select: [:each | each version printString = self getVersion]