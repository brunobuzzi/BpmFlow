orbeon
buildNoProcessFormInstanceNamed: definitionName withXml: instanceXmlString definitionXml: definitionXmlString in: app process: aBpmProcessInstance

	^self orbeonManager 
				buildNoProcessFormInstanceNamed: definitionName 
				withXml: instanceXmlString 
				definitionXml: definitionXmlString 
				in: app 
				process: aBpmProcessInstance