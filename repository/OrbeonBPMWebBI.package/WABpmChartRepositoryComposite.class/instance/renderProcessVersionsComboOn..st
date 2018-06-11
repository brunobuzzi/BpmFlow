search area
renderProcessVersionsComboOn: html
	| procVersions versions |

	procVersions := BpmProcessDefinition getAllProcessesNamed: self getProcessName in: self getApplicationName.

	versions := procVersions collect: [:each | each version printString].
	versions := (Array with: ('All' translateFor: self session user)), versions.

	self renderGenericActiveComboOn: html 
			withList: versions
			forVariable: 'version' 
			label: ('Version' translateFor: self session user)