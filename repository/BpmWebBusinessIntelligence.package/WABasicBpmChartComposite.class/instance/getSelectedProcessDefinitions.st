query variables
getSelectedProcessDefinitions
	| versions |

	versions := self session systemRoot getAllProcessesNamed: self getProcessName in: self getApplicationName.

	self isAllVersionSelected ifTrue: [^versions].

	^versions select: [:each | each version = self getVersion]