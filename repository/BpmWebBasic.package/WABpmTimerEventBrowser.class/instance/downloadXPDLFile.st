other
downloadXPDLFile

	^(BpmProcessBizagiFileOut 
		newFor: self 
		object: (selectedLateralItem isProcessDefinition ifTrue:[selectedLateralItem] ifFalse: [selectedLateralItem process]) 
		user: self session user) generateOutput