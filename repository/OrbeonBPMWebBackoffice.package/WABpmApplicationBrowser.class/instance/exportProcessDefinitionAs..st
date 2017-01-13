xpdl download
exportProcessDefinitionAs: procName
	| selectedOption stream bpmProcDefinition |

	selectedOption := (self componentValueAt: 'exportProcess') "the jqdialog set this value"ifNil: [^self] ifNotNil: [:value | value].

	(selectedOption = #xpdl) ifTrue: [^self downloadProcessMap: procName].

	(selectedOption = #svg) ifFalse: [^self].

	stream := PrintStream on: String new.

	bpmProcDefinition := BpmProcessDefinition getLatestProcessDefinitionNamed: procName in: selectedLateralItem applicationName.
	stream nextPutAll: 
		(self xmlHeader, String lf,
		((BizagiSvgConverter convert: bpmProcDefinition xmlString) generateSVGFor: bpmProcDefinition)).

	self requestContext respond: [:response | 
        response document: ((stream contents asByteArray seasideMimeDocument) 
                                        mimeType: 'image/svg+xml'; 
                                        fileName: (procName, '.svg'); 
                                        yourself)].