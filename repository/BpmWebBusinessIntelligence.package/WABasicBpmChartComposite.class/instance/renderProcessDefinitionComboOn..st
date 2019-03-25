search area
renderProcessDefinitionComboOn: html
	| definitionNames |

	definitionNames := (self defaultProcessDefinitionClass cacheAt: self getApplicationName ifAbsent: [^self]) keys asSortedCollection.

	self renderGenericActiveComboOn: html withList: definitionNames forVariable: 'process-name' label: ('Process' translateIn: self session).

	(self hasSearchValueAt: 'process-name') ifFalse: [self addSearchValue: definitionNames first named: 'process-name'].