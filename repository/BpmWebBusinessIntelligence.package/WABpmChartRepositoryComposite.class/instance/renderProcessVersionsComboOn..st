search area
renderProcessVersionsComboOn: html
	| procVersions versions |

	procVersions := self defaultProcessDefinitionClass getAllProcessesNamed: self getProcessName in: self getApplicationName.

	versions := procVersions collect: [:each | each version printString].
	versions := (Array with: ('All' translateIn: self session)), versions.

	self renderGenericActiveComboOn: html 
			withList: versions
			forVariable: 'version' 
			label: ('Version' translateIn: self session)