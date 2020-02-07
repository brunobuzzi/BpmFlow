search area
renderProcessDefinitionComboOn: html
	| definitionNames |

	definitionNames := self getApplication getAllProcessDefinitionsNames.

	self renderGenericActiveComboOn: html withList: definitionNames forVariable: 'process-name' label: ('Process' translateIn: self session).

	(self hasSearchValueAt: 'process-name') ifFalse: [self addSearchValue: definitionNames first named: 'process-name'].

	self renderProcessVersionsComboOn: html.