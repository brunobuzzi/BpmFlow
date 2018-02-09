export
exportProcessDefinitionAs
	| selectedOption stream |

	selectedOption := (self componentValueAt: 'exportProcess') "the jqdialog set this value"ifNil: [^self] ifNotNil: [:value | value].

	(selectedOption = #xpdl) ifTrue: [^self downloadProcessMap].

	(selectedOption = #svg) ifFalse: [^self].

	(BpmProcessSvgFileOut newFor: self object: selectedLateralItem user: self session user) generateProcessDefinitionOutput