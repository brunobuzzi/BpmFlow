other
doIt

	summary := OrbeonFormDefinitionsSummary 
								newFor: user 
								group: group 
								credentials: userCredentials
								pageSize: pageSize 
								pageNumber: pageNumber 
								xmlQuery: xmlDocument.

	summary buildStreams.

	^self generateXmlAnswerForBuilderSummary