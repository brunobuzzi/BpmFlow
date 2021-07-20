search area
getSelectedProcessDefinitionOrNil
	| definitions |

	definitions := self session systemRoot 
							getAllProcessesNamed: (self searchValueAt: 'process-type' ifAbsent: ['']) 
							in: (self searchValueAt: 'application' ifAbsent: ['']).

	^definitions ifNotEmpty: [definitions last] ifEmpty: [nil]