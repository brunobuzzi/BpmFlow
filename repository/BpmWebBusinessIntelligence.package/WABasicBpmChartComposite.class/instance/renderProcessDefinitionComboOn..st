search area
renderProcessDefinitionComboOn: html
	| definitionNames |

	definitionNames := self getApplication getAllProcessDefinitionsNames.

	self renderGenericActiveComboOn: html withList: definitionNames forVariable: 'process-name' label: ('Process' translateIn: self session).

	(self hasSearchValueAt: 'process-name') 
	ifFalse: [definitionNames notEmpty ifTrue: [self addSearchValue: definitionNames first named: 'process-name']].