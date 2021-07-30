other
doIt

	summary := OrbeonFormDefinitionsSummary newOn: systemRoot
								for: user 
								group: group 
								credentials: userCredentials
								pageSize: pageSize 
								pageNumber: pageNumber 
								xmlQuery: xmlDocument.

	summary buildStreams.

	^self generateXmlAnswerForBuilderSummary