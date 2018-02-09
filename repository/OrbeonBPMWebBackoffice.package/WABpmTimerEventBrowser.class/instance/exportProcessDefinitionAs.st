export
exportProcessDefinitionAs
	| selectedOption stream selectedTimerObject |

	selectedOption := (self componentValueAt: 'exportProcess') "the jqdialog set this value"ifNil: [^self] ifNotNil: [:value | value].

	(selectedOption = #xpdl) ifTrue: [^self downloadProcessMap].

	(selectedOption = #svg) ifFalse: [^self].

	stream := PrintStream on: String new.

	selectedTimerObject := selectedLateralItem isTimerEvent ifTrue: [selectedLateralItem process] ifFalse: [selectedLateralItem]. 
	
	stream nextPutAll: self xmlHeader, String lf,((BizagiSvgConverter convert: selectedTimerObject xmlString) generateSVGFor: self session user process: selectedTimerObject).

	self requestContext respond: [:response | 
        response document: ((stream contents asByteArray seasideMimeDocument) 
                                        mimeType: 'image/svg+xml'; 
                                        fileName: (selectedTimerObject processName, '.svg'); 
                                        yourself)].