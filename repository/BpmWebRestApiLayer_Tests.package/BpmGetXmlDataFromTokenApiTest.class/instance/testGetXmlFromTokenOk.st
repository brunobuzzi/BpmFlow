other
testGetXmlFromTokenOk
	| user uuid xmlString xmlDocument |

	user := self processExecutionSimulator getUserNamed: 'andrew vo' ifNone: [self assert: false].

	apiOperation := BpmGetXmlDataFromTokenApi new.

	procInstance := procDefinition createAndStartProcessInstance: (self getUserNamed: 'andrew vo').

	self assert: (procInstance startEvent getDefinitionName = 'visa apply start').
	self assert: procInstance currentActivities notEmpty.

	uuid := BpmOrbeonTempTokenRegistry default createEntryToOrbeonFor: procInstance currentActivities last for: user.

	apiOperation token: uuid.

	xmlString := apiOperation doIt.

	self assert: ((BpmOrbeonTempTokenRegistry default getSecureValueForToken: uuid) = nil). "not available any more"
	xmlDocument := XMLDOMParser parse: xmlString.
	self assert: (xmlDocument allElements select: [:each | (each name = 'username') and: [each innerXML = 'andrew vo']]) notEmpty.
	self assert: (xmlDocument allElements select: [:each | (each name = 'rol') and: [each innerXML = user roleName]]) notEmpty.
	self assert: (xmlDocument allElements select: [:each | (each name = 'processid') and: [each innerXML = procInstance id printString]]) notEmpty.