xpdl download
exportProcessDefinitionAs: procName
	| selectedOption bpmProcDefinition |

	selectedOption := (self componentValueAt: 'exportProcess') "the jqdialog set this value"ifNil: [^self] ifNotNil: [:value | value].

	bpmProcDefinition := BpmProcessDefinition getLatestProcessDefinitionNamed: procName in: selectedLateralItem applicationName.

	(selectedOption = #xpdl) ifTrue: [^(BpmProcessBizagiFileOut newFor: self object: bpmProcDefinition user: self session user) generateOutput].

	(selectedOption = #svg) ifFalse: [^self].

	(BpmProcessSvgFileOut newFor: self object: bpmProcDefinition user: self session user) generateOutput