search area
renderProcessVersionsComboOn: html
	| procVersions versions |

	procVersions := self session systemRoot getAllProcessesNamed: self getProcessName in: self getApplicationName.

	versions := procVersions collect: [:each | each version printString].

	self renderGenericActiveComboOn: html withList: (#('All') , versions) forVariable: 'version' label: ('Version' translateIn: self session).

	(self hasSearchValueAt: 'version') ifFalse: [self addSearchValue: 'All' named: 'version'].