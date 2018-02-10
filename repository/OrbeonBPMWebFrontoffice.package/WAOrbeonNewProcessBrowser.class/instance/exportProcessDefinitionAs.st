other
exportProcessDefinitionAs
	| selectedOption |

	selectedOption := (self componentValueAt: 'exportProcess') "the jqdialog set this value"ifNil: [^self] ifNotNil: [:value | value].

	(selectedOption = #xpdl) ifTrue: [^(BpmProcessBizagiFileOut newFor: self object: selectedLateralItem user: self session user) generateOutput].

	(selectedOption = #svg) ifFalse: [^self].

	(BpmProcessSvgFileOut newFor: self object: selectedLateralItem user: self session user) generateOutput