other
doIt

	summary := OrbeonFormInstancesSummary 
						newWith: application 
						definition: lastFormDefinition 
						version: version 
						user: user 
						group: group 
						credentials: userCredentials 
						pageSize: pageSize 
						pageNumber: pageNumber 
						xmlQuery: xmlDocument. 

	summary buildStreams.

	^self generateXmlAnswer