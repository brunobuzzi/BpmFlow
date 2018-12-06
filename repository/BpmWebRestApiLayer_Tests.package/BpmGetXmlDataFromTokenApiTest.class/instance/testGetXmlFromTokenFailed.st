other
testGetXmlFromTokenFailed
	| user uuid xmlString xmlDocument |

	user := self processExecutionSimulator getUserNamed: 'andrew vo' ifNone: [self assert: false].

	apiOperation := BpmGetXmlDataFromTokenApi new.

	procInstance := procDefinition createAndStartProcessInstance: (self getUserNamed: 'andrew vo').

	self assert: (procInstance startEvent getDefinitionName = 'visa apply start').
	self assert: procInstance currentActivities notEmpty.

	uuid := BpmOrbeonTempTokenRegistry default createEntryToOrbeonFor: procInstance currentActivities last for: user.

	apiOperation token: 'abcd'.

	xmlString := apiOperation doIt.

	xmlDocument := XMLDOMParser parse: xmlString.
	self assert: (xmlDocument allElements select: [:each | (each name = 'username') and: [each innerXML = 'andrew vo']]) isEmpty.
	self assert: (xmlDocument allElements select: [:each | (each name = 'rol') and: [each innerXML = user roleName]]) isEmpty.
	self assert: (xmlDocument allElements select: [:each | (each name = 'processid') and: [each innerXML = procInstance id printString]]) isEmpty.