other
getSelectedProcessDefinitions
	| versions |

	versions := self session systemRoot getAllProcessesNamed: self getProcessName in: self getApplicationName.

	^versions select: [:each | each version printString = self getVersion]