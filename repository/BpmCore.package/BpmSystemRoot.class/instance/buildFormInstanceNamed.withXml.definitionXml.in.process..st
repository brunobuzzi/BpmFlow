orbeon
buildFormInstanceNamed: definitionName withXml: instanceXmlString definitionXml: definitionXmlString in: app process: aBpmProcessInstance

	^self orbeonManager 
				buildFormInstanceNamed: definitionName 
				withXml: instanceXmlString 
				definitionXml: definitionXmlString 
				in: app 
				process: aBpmProcessInstance