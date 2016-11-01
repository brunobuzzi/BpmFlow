other
renderProcessDefinitionComboOn: html
	| definitionNames |

	definitionNames := (BpmProcessDefinition cacheAt: self getApplicationName ifAbsent: [^self]) keys asSortedCollection.

	self renderGenericActiveComboOn: html withList: definitionNames forVariable: 'process-name' label: 'Process'.

	(self hasSearchValueAt: 'process-name') ifFalse: [self addSearchValue: definitionNames first named: 'process-name'].